class ExamController < ApplicationController
	attr_accessor :prompt, :answer

	def initialize(prompt, answer)
	  @prompt = prompt
	  @answer = answer
	end

  def ans_to_que
		questions = Question.all
		answer = params["answer"]
		score = 0

		questions.each do |question|
		  puts question.prompt
		  if answer == question.answer
		     score += 1
		  end
		end
		puts "you got #{score} out of #{questions.length()}"
  end
end