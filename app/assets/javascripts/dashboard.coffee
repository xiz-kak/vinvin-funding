# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# pledgedata = {
#   "config": {
#     "type": "line",
#     "lineWidth": 4,
#     "colorSet": ["#3399cc"],
#     "bg": "white",
#     "useShadow": "no",
#     "useMarker": "css-ring",
#     "markerWidth":7,
#     "maxY": 120,
#     "minY": 10,
#     "axisXLen": 11,
#     "unit": "$"
#   },
# 
#   "data": [
#     ["Date","2/1","2/2","2/3","2/4","2/5","2/6","2/7"],
#     ["Pledged Amount",80,100,30,45,70,35,80]
#   ]
# };
# 
# supporterdata = {
#   "config": {
#     "type": "line",
#     "width": 800,
#     "height": 300,
#     "lineWidth": 4,
#     "colorSet": ["#330099"],
#     "bg": "white",
#     "useShadow": "no",
#     "useMarker": "css-ring",
#     "markerWidth":7,
#     "maxY": 10,
#     "minY": 0,
#     "axisXLen": 10,
#     "unit": "count"
#   },
# 
#   "data": [
#     ["Date","2/1","2/2","2/3","2/4","2/5","2/6","2/7"],
#     ["# of Supporters",2,5,1,3,8,2,6]
#   ]
# };
# 
# paymentdata = {
#   "config": {
#     "width": 360,
#     "height": 250,
#     "type": "pie",
#     "useShadow": "no",
#     "useVal": "yes",
#     "colorSet": ["#0070ba", "#ff4800"],
#     "pieDataIndex": 2,
#     "colNameFont": "100 18px 'Arial'",
#     "pieRingWidth": 20,
#     "pieHoleRadius": 30,
#     "textColor": "#888",
#     "bg": "#fff"
#   },
# 
#   "data": [
#     ["",735],
#     ["PayPal",335],
#     ["Payoneer",400]
#   ]
# };
# 
# 
# sitedata = {
#   "config": {
#     "width": 360,
#     "height": 250,
#     "type": "pie",
#     "useShadow": "no",
#     "useVal": "yes",
#     "colorSet": ["#0070ba", "blue"],
#     "pieDataIndex": 2,
#     "colNameFont": "100 18px 'Arial'",
#     "pieRingWidth": 20,
#     "pieHoleRadius": 30,
#     "textColor": "#888",
#     "bg": "#fff"
#   },
# 
#   "data": [
#     ["",2422],
#     ["Facebook",2548],
#     ["Twitter",874]
#   ]
# };
# 
# jQuery ->
#   ccchart.init("general-stats-chart", supporterdata).add(pledgedata)
#   ccchart.init("payment-stats-chart", paymentdata)
#   ccchart.init("site-stats-chart", sitedata)
