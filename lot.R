# plot 0
data_bp|>
  ggplot(aes(dbp, sbp)) +
  geom_point(color = "deeppink", size = 3 ,alpha = 0.7) +
  #ggtitle(paste0("Negative Correlation r=", round(cor1, digits=1))) +
  theme_steve() +
  geom_vline(xintercept=mean(data_bp$dbp), linetype="dashed", color = "blue", size = 1.0) +
  geom_hline(yintercept=mean(data_bp$sbp), linetype="dashed", color = "blue", size = 1.0) +
  annotate("text", x = 100, y = 200, size = 5.0, label = "(+, +) = + \n+ positive association") +
  annotate("text", x = 71, y = 103, size = 5.0, label = "(-, -) = + \n+ positive association") +
  annotate("text", x = 70, y = 200, size = 5.0, label = "(-, +) = - \n- negative association") +
  annotate("text", x = 100, y = 103, size = 5.0, label = "(+, -) = - \n- negative association") 
  
  
$$r = \frac{sum \ of\ products \ about \ the \ mean \ of \ dbp \ and \ sbp}{\sqrt{sum \ of \ squares \ about \ the \ mean \ of \ dbp \times sum \ of \ squares \ about \ the \ mean \ of \ sbp}}$$


mean(data_bp$dbp)
