class CourseContentController < ApplicationController
    def create
        @course_content = CourseContent.new(course_params)
        @course_content.save
        render text: "saved"
    end

    private
        def course_content_params
            params.require(:course).permit(:name, :description)
        end
end
