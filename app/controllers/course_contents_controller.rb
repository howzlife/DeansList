class CourseContentsController < ApplicationController
    def create
        @course_content = CourseContent.new(course_content_params)
        @course_content.save
        render text: "saved"
    end

    private
        def course_content_params
            params.require(:course_content).permit(:course_id, :name, :description)
        end
end
