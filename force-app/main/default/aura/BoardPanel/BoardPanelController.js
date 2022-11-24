({
    startgame : function(component, event, helper) {

     let gamemodecombobox  = component.find("gamemodeid");

     let selectvalue = gamemodecombobox.get("v.value");
     
     component.set("v.Selectedmode",selectvalue);


     console.log("Start new game is  "+ selectvalue);
     component.get("v.Selectedmode");
     console.log('Seleced Mode attribute value  '+ component.get("v.Selectedmode"));
    }
    ,


    ReshuffleBoard : function(component, event, helper) {
        console.log("Reshuffle is click");
            }
})
