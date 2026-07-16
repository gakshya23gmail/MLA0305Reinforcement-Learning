cat("\014")
cat("      MARKOV DECISION PROCESS (MDP)\n")
cat("     MODULE 4 : EXPECTED IMMEDIATE REWARD\n")
transition_table <- data.frame(
  Current_State = c("S1","S1","S2","S2","S3","S3"),
  Action = c("Left","Right","Left","Right","Left","Right"),
  Next_State = c("S2","S3","S1","S3","S2","S1"),
  Probability = c(0.80,0.20,0.60,0.40,0.50,0.50),
  Reward = c(5,10,3,8,6,4)
)
cat("TRANSITION AND REWARD TABLE\n\n")
print(transition_table)

transition_table$Expected_Reward <-
  transition_table$Probability * transition_table$Reward
cat("EXPECTED IMMEDIATE REWARD FOR EACH STATE-ACTION PAIR\n")
print(transition_table)
cat("STATE WISE EXPECTED REWARD\n")
state_summary <- aggregate(
  Expected_Reward ~ Current_State,
  data = transition_table,
  FUN = sum
)
print(state_summary)
cat("ACTION WISE EXPECTED REWARD\n")
action_summary <- aggregate(
  Expected_Reward ~ Action,
  data = transition_table,
  FUN = sum
)
print(action_summary)
cat("TOTAL EXPECTED IMMEDIATE REWARD\n")
total_reward <- sum(transition_table$Expected_Reward)

cat("Total Expected Immediate Reward =", total_reward, "\n")
cat("MODULE 4 EXECUTED SUCCESSFULLY\n")