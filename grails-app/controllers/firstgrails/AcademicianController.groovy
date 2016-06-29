package firstgrails



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AcademicianController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Academician.list(params), model:[academicianInstanceCount: Academician.count()]
    }

    def show(Academician academicianInstance) {
        respond academicianInstance
    }

    def create() {
        respond new Academician(params)
    }

    @Transactional
    def save(Academician academicianInstance) {
        if (academicianInstance == null) {
            notFound()
            return
        }

        if (academicianInstance.hasErrors()) {
            respond academicianInstance.errors, view:'create'
            return
        }

        academicianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'academician.label', default: 'Academician'), academicianInstance.id])
                redirect academicianInstance
            }
            '*' { respond academicianInstance, [status: CREATED] }
        }
    }

    def edit(Academician academicianInstance) {
        respond academicianInstance
    }

    @Transactional
    def update(Academician academicianInstance) {
        if (academicianInstance == null) {
            notFound()
            return
        }

        if (academicianInstance.hasErrors()) {
            respond academicianInstance.errors, view:'edit'
            return
        }

        academicianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Academician.label', default: 'Academician'), academicianInstance.id])
                redirect academicianInstance
            }
            '*'{ respond academicianInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Academician academicianInstance) {

        if (academicianInstance == null) {
            notFound()
            return
        }

        academicianInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Academician.label', default: 'Academician'), academicianInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'academician.label', default: 'Academician'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
