package db;

import models.Tasks;

import java.util.ArrayList;

public class DbManager {
    static ArrayList<Tasks> tasks= new ArrayList<>();
    static Long index = 4L;
    static {
        tasks.add(new Tasks(1L,"Создать Веб app Java EE","Description","23.10.2023",true));
        tasks.add(new Tasks(2L,"Учить Итальянский","Description","01.05.2023",false));
    }

    public static void addTask(Tasks Task){
        Task.setId(index);
        tasks.add(Task);
        index++;
    }
    public static void updateTask(Tasks task){
        for(Tasks item:tasks){
            if(item.getId()==task.getId()){
                item.setName(task.getName());
                item.setStatus(task.isStatus());
                item.setDescription(task.getDescription());
                item.setDeadlineDate(task.getDeadlineDate());
            }
        }
    }
    public static ArrayList<Tasks> getAllTasks(){
        return tasks;
    }
    public static Tasks getTask(Long id){
        for (Tasks task :tasks){
            if(task.getId()==id){
                return task;
            }
        }
        return null;
    }

    public static void deleteTask(Long id){
        for (Tasks task :tasks){
            if(task.getId()==id){
                tasks.remove(task);
            }
        }
    }
}
