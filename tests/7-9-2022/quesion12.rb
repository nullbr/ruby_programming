class LanguageStudent
  attr_reader :languages

  def initialize
    @languages = []
  end

  def add_language(language)
    if !@languages.include?(language)
      @languages << language
      true
    else
      false
    end
  end
end

class LanguageTeacher < LanguageStudent
  def teach(student, language)
    return student.add_language(language) if @languages.include?(language)

    false
  end
end

teacher = LanguageTeacher.new
teacher.add_language('English')
student = LanguageStudent.new
p teacher.teach(student, 'English')
print(student.languages)
