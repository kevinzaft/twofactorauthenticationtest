package website
import org.apache.commons.lang.RandomStringUtils

class WebpageController {
    def mailService
    def tempAuth = ""

    def index() {
    }

    def secondAuth(){
    }

    def success(){
    }

    def login() {
        String charset = (('A'..'Z') + ('0'..'9')).join()
        Integer length = 9
        String randomString = RandomStringUtils.random(length, charset.toCharArray())
        mailService.sendMail {
//            async true
            from "donotreply@gmail.com"
            to params.username
            subject "User Authentication"
            text randomString
        }
        tempAuth = randomString
        flash.message = "Verification email sent at "  +new Date()
        redirect(action: "secondAuth")
    }

    def secondVerification(){
        if (params.code == tempAuth){
            redirect(action: "success")
        }
        else {
            flash.message = "Wrong code please try again"
            redirect(action: "secondAuth")
        }
    }
}
