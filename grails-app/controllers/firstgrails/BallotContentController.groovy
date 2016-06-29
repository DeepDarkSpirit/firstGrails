package firstgrails

import grails.converters.*
import org.codehaus.groovy.grails.commons.GrailsApplication
import org.grails.plugins.easyui.EasyuiDomainClassMarshaller
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
class BallotContentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BallotContent.list(params), model:[ballotContentInstanceCount: BallotContent.count()]
    }

    def begin(BallotContent ballotContentInstance) {
        def candidatesResult = ballotCandidates(ballotContentInstance)
        ArrayList turnCandidateAll = new ArrayList();
        turnCandidateAll =  candidatesResult.turnCandidateAll
        def ballotResultAll = BallotResult.executeQuery( "select distinct a from BallotResult a where a.ballotContent.id = ?", [new Long(ballotContentInstance.id)] );
        if(ballotResultAll == []){
            def count = 0
            while(turnCandidateAll[count] != null){
                def newBallotResult = new BallotResult(ballotContent:ballotContentInstance.id
                                            ,candidateID:turnCandidateAll[count].candidateID
                                            ,nominationID:turnCandidateAll[count].nominationID
                                            ,name:turnCandidateAll[count].name
                                            ,age:turnCandidateAll[count].age
                                            ,aNum:0
                                            ,bNum:0
                                            ,cNum:0
                                            ,dNum:0
                                            ,eNum:0
                                            ,score:0
                                            ,disciplines:turnCandidateAll[count].disciplines
                                            ,organization:turnCandidateAll[count].organization)
                newBallotResult.save(flush:true)
                count++;
            }
        }
        ballotContentInstance.status="\u5f00\u59cb"
        ballotContentInstance.save(flush:true)
        redirect(action: "result",id:ballotContentInstance.id )
    }

    def finalshow(BallotContent ballotContentInstance,String minScore,String end){
       if( minScore == "")
           minScore = 0
        def data = BallotResult.executeQuery( "select distinct a from BallotResult a where a.ballotContent.id = ? and a.score >= ?", [new Long(ballotContentInstance.id),new BigDecimal(minScore)] );
        if(data != []){
            def allBllot = BallotContent.findAllByRoundID(ballotContentInstance.roundID)
            for(q in allBllot){
                q.status = "\u7ed3\u675f"
                q.save(flush:true)
            }
            ballotContentInstance.status = "\u7ed3\u675f"
            ballotContentInstance.minAgree = new Integer(minScore)
            ballotContentInstance.passScore = new Integer(minScore)
            ballotContentInstance.save(flush:true)
            def count = 0
            while(data[count] != null){
                def testTurnCandidate = TurnCandidate.findByCandidateIDAndTurnID(data[count].candidateID,ballotContentInstance.roundID+1)
                if(testTurnCandidate == null){
                    def oldTurnCandidate = TurnCandidate.findByCandidateID(data[count].candidateID)
                    def newTurnCandidate = new TurnCandidate(electionYear:oldTurnCandidate.electionYear
                            ,candidateID:oldTurnCandidate.candidateID
                            ,division:oldTurnCandidate.division
                            ,nominationID:oldTurnCandidate.nominationID
                            ,name:oldTurnCandidate.name
                            ,age:oldTurnCandidate.age
                            ,disciplines:oldTurnCandidate.disciplines
                            ,organization:oldTurnCandidate.organization
                            ,pass:"\u662f"
                            ,turnID:ballotContentInstance.roundID+1)
                    newTurnCandidate.save(flush:true)
                }
                if((end == "" ? 0 : end)){
                    def testAcademician = Academician.findByCandidateID(data[count].candidateID)
                    if(testAcademician == null){
                        def oldCandidate = Candidate.findByCandidateID(data[count].candidateID)
                        def newAcademician = new Academician(electionYear:oldCandidate.electionYear
                                ,candidateID:oldCandidate.candidateID
                                ,division:oldCandidate.division
                                ,nominationID:oldCandidate.nominationID
                                ,name:oldCandidate.name
                                ,age:oldCandidate.age
                                ,disciplines:oldCandidate.disciplines
                                ,organization:oldCandidate.organization
                                ,idType:oldCandidate.idType
                                ,idnum:oldCandidate.idnum
                                ,ethnicity:oldCandidate.ethnicity
                                ,nation:oldCandidate.nation
                                ,state:oldCandidate.state
                                ,degree:oldCandidate.degree
                                ,death:"\u5426"
                                ,recall:"\u5426")
                        newAcademician.save(flush:true)
                    }
                }
                count++;
            }
            redirect(action: "result",id:ballotContentInstance.id )
        }else{
            render null
        }
    }

    def showRealMan(){
        def results = BallotResult.executeQuery( "select distinct a from BallotResult a where a.ballotContent.id = ? and a.score >= ? order by a.score desc", [new Long(params.ballot),new BigDecimal((params.minScore == "" ? 0 : params.minScore))] );//查询结果
        def data = results as JSON//转换为JSON格式
        if(data){
            render data
        }else{
            render null
        }
    }

    def result(BallotContent ballotContentInstance,Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        params.offset = params.offset ? params.offset.toInteger() : 0;
        def offsetAfter = params.offset + 10

        def ballotResultAll = BallotResult.executeQuery( "select distinct a from BallotResult a where a.ballotContent.id = ?", [new Long(ballotContentInstance.id)] );
        def errors = ""
        if(ballotResultAll == [] ){
            respond ballotContentInstance,model:[errors: "\u8fd8\u672a\u5f00\u59cb\u7edf\u8ba1\u9009\u7968"]
            return
        }else{
            def count = 0
            ArrayList resultCandidateAll = new ArrayList();
            while(ballotResultAll[count] != null){
                ballotResultAll[count].score=ballotResultAll[count].aNum * (ballotContentInstance?.aScore == null ? 0 : ballotContentInstance?.aScore)+ballotResultAll[count].bNum * (ballotContentInstance?.bScore == null ? 0 : ballotContentInstance?.bScore) +ballotResultAll[count].cNum * (ballotContentInstance?.cScore == null ? 0 : ballotContentInstance?.cScore) +ballotResultAll[count].dNum * (ballotContentInstance?.dScore == null ? 0 : ballotContentInstance?.dScore) +ballotResultAll[count].eNum * (ballotContentInstance?.eScore == null ? 0 : ballotContentInstance?.eScore);
                ballotResultAll[count].save(flush:true)
                resultCandidateAll.add(ballotResultAll[count]);
                count++;
            }
            //分页
            def counter = 1
            ArrayList resultCandidatePOST = new ArrayList();
            for(one in resultCandidateAll){
                if(counter > params.offset && counter <= offsetAfter){
                    resultCandidatePOST.add(one);
                }
                counter++;
            }
            respond ballotContentInstance,model:[errors: errors,resultCandidatePOST:resultCandidatePOST,total:count,page:offsetAfter/10]
        }
    }

    def ballotCandidates(BallotContent ballotContentInstance) {
        def divisionIDs = ballotContentInstance.divisionID.split(",")//切割学部
        def divisionName = ""
        ArrayList turnCandidate = new ArrayList();
        if (ballotContentInstance.groupID == "\u5206\u7ec4"){//分组
            for(b in divisionIDs){
                def a = Division.findWhere(id:new Long(b))//根据学部表单ID查学部
                divisionName += a.divisionName  +"-" + a.groupName +" "//获取学部名字
                turnCandidate.add(a.turnCandidates);
            }
        }
        if (ballotContentInstance.groupID == "\u4e0d\u5206\u7ec4"){//不分组
            for(b in divisionIDs){
                def a = Division.findWhere(divisionID:b)//根据学部代号ID查学部
                divisionName += a.divisionName+" "//获取学部名字
                def divisionAll = Division.findAllWhere(divisionID:b)
                for(c in divisionAll){//遍历学部里每一个候选人
                    turnCandidate.add(c.turnCandidates);
                }
            }
        }
        //总数
        ArrayList turnCandidateAll = new ArrayList();
        def total = 0;
        for(one in turnCandidate){
            def count = 0
            while(one[count] != null){
                if(one[count].turnID == ballotContentInstance.roundID ){
                    turnCandidateAll.add(one[count]);
                    total++;
                }
                count++;
            }
        }
        return [turnCandidateAll: turnCandidateAll,total:total,divisionName:divisionName]
    }

    def show(BallotContent ballotContentInstance,Integer max) {
        //分页设置
        params.max = Math.min(max ?: 10, 100)
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        params.offset = params.offset ? params.offset.toInteger() : 0;
        def offsetAfter = params.offset + params.max
        //获取候选人数据
        def candidatesResult = ballotCandidates(ballotContentInstance)
        ArrayList turnCandidateAll = new ArrayList();
        turnCandidateAll =  candidatesResult.turnCandidateAll
        //分页
        def counter = 1
        ArrayList turnCandidatePOST = new ArrayList();
        for(one in turnCandidateAll){
            if(counter > params.offset && counter <= offsetAfter){
                turnCandidatePOST.add(one);
            }
            counter++;
        }
        respond ballotContentInstance, model:[turnCandidatelist: turnCandidatePOST,total:candidatesResult.total,divisionName:candidatesResult.divisionName,page:offsetAfter/params.max]
    }


    def list = {
        render Division.list() as JSON
    }

    def list2 = {
        def results = Division.executeQuery( "select distinct a.divisionID as divisionID,a.divisionName as divisionName from Division a" );
        String List = new String();
        def i = 0
        List ="["
        while(results[i] != null) {
            List += "{\"divisionID\":\""+results[i][0]+"\",\"divisionName\":\""+results[i][1]+"\"}"
            i++
            if(results[i] != null){
                List +=","
            }else{
                List +="]"
            }
        }
        render List
    }

    def create() {
        respond new BallotContent(params)
    }

    @Transactional
    def save(BallotContent ballotContentInstance) {
        if (ballotContentInstance == null) {
            notFound()
            return
        }

        if (ballotContentInstance.hasErrors()) {
            respond ballotContentInstance.errors, view:'create'
            return
        }
        ballotContentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ballotContent.label', default: 'BallotContent'), ballotContentInstance.id])
                redirect ballotContentInstance
            }
            '*' { respond ballotContentInstance, [status: CREATED] }
        }
    }

    def edit(BallotContent ballotContentInstance) {
        respond ballotContentInstance
    }

    @Transactional
    def update(BallotContent ballotContentInstance) {
        if (ballotContentInstance == null) {
            notFound()
            return
        }

        if (ballotContentInstance.hasErrors()) {
            respond ballotContentInstance.errors, view:'edit'
            return
        }

        ballotContentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BallotContent.label', default: 'BallotContent'), ballotContentInstance.id])
                redirect ballotContentInstance
            }
            '*'{ respond ballotContentInstance, [status: OK] }
        }
    }

    def updatewithaction(BallotContent ballotContentInstance,String redact) {
        if (ballotContentInstance == null) {
                notFound()
                return
        }
        ballotContentInstance.save flush:true
        if(redact == null){
            redact = "index"
        }
        redirect(action:redact)
    }

    @Transactional
    def delete(BallotContent ballotContentInstance) {

        if (ballotContentInstance == null) {
            notFound()
            return
        }

        ballotContentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BallotContent.label', default: 'BallotContent'), ballotContentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ballotContent.label', default: 'BallotContent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
