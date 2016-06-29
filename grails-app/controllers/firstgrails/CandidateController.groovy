package firstgrails


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CandidateController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Candidate.list(params), model: [candidateInstanceCount: Candidate.count()]
    }

    def show(Candidate candidateInstance) {
        respond candidateInstance
    }

    def create() {
        respond new Candidate(params)
    }

    @Transactional
    def save(Candidate candidateInstance) {
        if (candidateInstance == null) {
            notFound()
            return
        }

        if (candidateInstance.hasErrors()) {
            respond candidateInstance.errors, view: 'create'
            return
        }

        candidateInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'candidate.label', default: 'Candidate'), candidateInstance.id])
                redirect candidateInstance
            }
            '*' { respond candidateInstance, [status: CREATED] }
        }
    }

    def edit(Candidate candidateInstance) {
        respond candidateInstance
    }

    @Transactional
    def update(Candidate candidateInstance) {
        if (candidateInstance == null) {
            notFound()
            return
        }

        if (candidateInstance.hasErrors()) {
            respond candidateInstance.errors, view: 'edit'
            return
        }

        candidateInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Candidate.label', default: 'Candidate'), candidateInstance.id])
                redirect candidateInstance
            }
            '*' { respond candidateInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Candidate candidateInstance) {

        if (candidateInstance == null) {
            notFound()
            return
        }

        candidateInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Candidate.label', default: 'Candidate'), candidateInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'candidate.label', default: 'Candidate'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
