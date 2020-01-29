library(plotly)
library(RColorBrewer)

color_energy <- "#60ca83"
color_health <- "#8d00ff"
color_water <- "#5fc9d1"
color_mobility <- "#ec6341"
color_infotech <- "#ffc51a"

data <- read.csv("/Volumes/GoogleDrive/My Drive/Clients/Smart Communities Maine/Survey/Survey Analysis/Summary.csv")

plot_ly(data, x=~SI.Performance.Self.Assessment, y=~Total, type = 'scatter', mode = 'markers', color = ~Total, colors = 'Greens',
        marker = list(size = ~SI.Performance.Self.Assessment, opacity = 1), 
        hoverinfo = 'text', 
        text = ~paste('Municipality:', Municipality, '<br>Total SI Elements:', Total, '<br>Self Assessment:', SI.Performance.Self.Assessment)) %>%
  layout(title='Smart Infrastructure: Self-Assessment vs. Total # of Elements Present', 
         xaxis=list(showgrid=FALSE, title='SI Performance Self-Assessment'), 
         yaxis=list(showgrid=FALSE, title='Total Number of SI Elements'))



