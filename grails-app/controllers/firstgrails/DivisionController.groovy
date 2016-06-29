package firstgrails



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DivisionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Division.list(params), model:[divisionInstanceCount: Division.count()]
    }

    def show(Division divisionInstance) {
        respond divisionInstance
    }

    def create() {
        respond new Division(params)
    }

    @Transactional
    def save(Division divisionInstance) {
        if (divisionInstance == null) {
            notFound()
            return
        }

        if (divisionInstance.hasErrors()) {
            respond divisionInstance.errors, view:'create'
            return
        }

        divisionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'division.label', default: 'Division'), divisionInstance.id])
                redirect divisionInstance
            }
            '*' { respond divisionInstance, [status: CREATED] }
        }
    }

    def edit(Division divisionInstance) {
        respond divisionInstance
    }

    @Transactional
    def update(Division divisionInstance) {
        if (divisionInstance == null) {
            notFound()
            return
        }

        if (divisionInstance.hasErrors()) {
            respond divisionInstance.errors, view:'edit'
            return
        }

        divisionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Division.label', default: 'Division'), divisionInstance.id])
                redirect divisionInstance
            }
            '*'{ respond divisionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Division divisionInstance) {

        if (divisionInstance == null) {
            notFound()
            return
        }

        divisionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Division.label', default: 'Division'), divisionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'division.label', default: 'Division'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
