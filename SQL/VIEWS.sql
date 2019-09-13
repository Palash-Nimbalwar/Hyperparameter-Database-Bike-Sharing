CREATE VIEW View_1 AS
SELECT model_id, rmse,rmsle 
FROM leaderboard
WHERE rmsle is NOT NULL;

CREATE VIEW View_2 AS
SELECT model_id, mae
FROM leaderboard
WHERE mae>10 ;

CREATE VIEW View_3 AS
SELECT model_id, mean_residual_deviance
FROM leaderboard
WHERE mean_residual_deviance>1000 ;

CREATE VIEW View_4 AS
SELECT model_id, mean_residual_deviance
FROM leaderboard
group by model_id ;