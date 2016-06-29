package firstgrails



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class TurnCandidateController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TurnCandidate.list(params), model:[turnCandidateInstanceCount: TurnCandidate.count()]
    }

    def importCandidate(){//定义导入候选人函数importCandidate()
        def data = Candidate.list()//读取所有候选人数据，存在data里
        if(data[0] != null){//判断候选人信息是否为空，非空则进行下一步，开始遍历
            def count = 0//定义遍历的计数器count
            while (data[count]!=null){//开始遍历,data[count]是每一位候选人，如果还未遍历完，则继续
                //通过候选人的candidateID在轮候选人TurnCandidate中查找，结果赋予testTurnCandidate
                def testTurnCandidate = TurnCandidate.findByCandidateID(data[count].candidateID)
                //判断，如果查询不到对应候选人则进行插入
                if(testTurnCandidate == null){
                    //新建轮候选人，并采用候选人中相应信息，另新设turnID为1
                    def newTurnCandidate = new TurnCandidate(electionYear:data[count].electionYear
                            ,candidateID:data[count].candidateID
                            ,division:Division.get(new Long(data[count].division))
                            ,nominationID:data[count].nominationID
                            ,name:data[count].name
                            ,age:data[count].age
                            ,disciplines:data[count].disciplines
                            ,organization:data[count].organization
                            ,turnID:1)
                    //保存新建的轮候选人信息
                    newTurnCandidate.save(flush:true)
                }
                count++;//计数器加一
            }
        }
        redirect(action: "index" )//返回轮候选人页面
    }
    def show(TurnCandidate turnCandidateInstance) {
        respond turnCandidateInstance
    }

    def create() {
        respond new TurnCandidate(params)
    }

    @Transactional
    def save(TurnCandidate turnCandidateInstance) {
        if (turnCandidateInstance == null) {
            notFound()
            return
        }

        if (turnCandidateInstance.hasErrors()) {
            respond turnCandidateInstance.errors, view:'create'
            return
        }

        turnCandidateInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'turnCandidate.label', default: 'TurnCandidate'), turnCandidateInstance.id])
                redirect turnCandidateInstance
            }
            '*' { respond turnCandidateInstance, [status: CREATED] }
        }
    }

    def edit(TurnCandidate turnCandidateInstance) {
        respond turnCandidateInstance
    }

    @Transactional
    def update(TurnCandidate turnCandidateInstance) {
        if (turnCandidateInstance == null) {
            notFound()
            return
        }

        if (turnCandidateInstance.hasErrors()) {
            respond turnCandidateInstance.errors, view:'edit'
            return
        }

        turnCandidateInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TurnCandidate.label', default: 'TurnCandidate'), turnCandidateInstance.id])
                redirect turnCandidateInstance
            }
            '*'{ respond turnCandidateInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TurnCandidate turnCandidateInstance) {

        if (turnCandidateInstance == null) {
            notFound()
            return
        }

        turnCandidateInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TurnCandidate.label', default: 'TurnCandidate'), turnCandidateInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'turnCandidate.label', default: 'TurnCandidate'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
