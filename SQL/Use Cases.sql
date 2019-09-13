-- To find all the leaderboard values for a particular algo, here GBM.
select * from leaderboard
left join models_errors on leaderboard.md_id=models_errors.id
left join algo on models_errors.algo_id=algo.id
where algo="gbm";

-- To find the model_id from list for particular algo,here GBM.
select model_id from models
left join algo on models.algo_id=algo_id
where algo="gbm";

-- To find the errors for algo mentioned.
select var,coef,go,model_id from a10001
left join models_errors on a10001.md_id=models_errors.id
left join algo on models_errors.algo_id=algo.id;

-- To find the hyperparameters's details with a specified runtime.
select nfolds,rate,loss,run_time,models.model_id,algo from hp_deeplearning
left join model_meta on hp_deeplearning.mm_id=model_meta.id
left join models on model_meta.model._id=model.id
left join algo on models.algo_id=algo.id
where run_time=1850;

-- To find the model id when rmsle is null
select model_id,rmse,rmsle
from leaderboard
order by
(case when rmsle is null then rmse else rmsle
end);

-- To find the best model id and grouping them accordingly
select model_id,min(rmse)
from leaderboard
group by model_id;


-- To find columns names with their data types
select id,col_name,col_type
from data_des
order by
(case when col_type is null then col_name else col_type
end);

-- To find the model id's whose mean residual deviance is more than 1000 and grouping them
select model_id,mean_residual_deviance
from leaderboard
order by
(case when mean_residual_deviance>1000 then model_id else mean_residual_deviance
end);

-- To find the model_id with least mae and ordering them in ascending order
select model_id,mae
from leaderboard
order by
(case when mae>10 then model_id else mae
end);

-- To find column names with the number of records
select id,col_name,total_records
from data_des
order by
(case when col_name is null then total_records else col_name
end);



