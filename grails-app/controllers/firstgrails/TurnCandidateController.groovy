package firstgrails



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class TurnCandidateController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TurnCandidate.list(params), model:[turnCandidateInstanceCount: TurnCandidate.count()]
    }

    def importCandidate(){//���嵼���ѡ�˺���importCandidate()
        def data = Candidate.list()//��ȡ���к�ѡ�����ݣ�����data��
        if(data[0] != null){//�жϺ�ѡ����Ϣ�Ƿ�Ϊ�գ��ǿ��������һ������ʼ����
            def count = 0//��������ļ�����count
            while (data[count]!=null){//��ʼ����,data[count]��ÿһλ��ѡ�ˣ������δ�����꣬�����
                //ͨ����ѡ�˵�candidateID���ֺ�ѡ��TurnCandidate�в��ң��������testTurnCandidate
                def testTurnCandidate = TurnCandidate.findByCandidateID(data[count].candidateID)
                //�жϣ������ѯ������Ӧ��ѡ������в���
                if(testTurnCandidate == null){
                    //�½��ֺ�ѡ�ˣ������ú�ѡ������Ӧ��Ϣ��������turnIDΪ1
                    def newTurnCandidate = new TurnCandidate(electionYear:data[count].electionYear
                            ,candidateID:data[count].candidateID
                            ,division:Division.get(new Long(data[count].division))
                            ,nominationID:data[count].nominationID
                            ,name:data[count].name
                            ,age:data[count].age
                            ,disciplines:data[count].disciplines
                            ,organization:data[count].organization
                            ,turnID:1)
                    //�����½����ֺ�ѡ����Ϣ
                    newTurnCandidate.save(flush:true)
                }
                count++;//��������һ
            }
        }
        redirect(action: "index" )//�����ֺ�ѡ��ҳ��
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
