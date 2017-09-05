module TasksHelper
    def myedit(task)
        if task.user.id == current_user.id then
            link_to '編集', edit_task_path(task), class: 'btn btn-primary'
        else
            ""
        end
    end
    
    def mydelete(task)
        if task.user.id == current_user.id then
            link_to '削除', task, method: :delete, data: { confirm: '本当に削除してよろしいですか？' }, class: 'btn btn-danger'
        end
    end
end
