class TaskObserver
    def self.after_create(task)
        task.people.each do |person|
            puts ">>Enviando email ao #{person.name} sobre a tarefa #{task.title}"
        end
    end
end

