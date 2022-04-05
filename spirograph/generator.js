function drawSpiro() {
	var canvas = document.getElementById("myCanvas");
  if (canvas.getContext) {
    var ctx = canvas.getContext('2d');
  	ctx.beginPath();
    
    var R=8,r=1,a=4;
    var x0=R+r-a, y0=0;
    ctx.moveTo(150+10*x0,150+10*y0);
    
    var sin=Math.sin, cos=Math.cos, pi=Math.PI, nRev=16;
    var kml=[],count=0;
    var sgm_x=34.021419, sgm_y=-118.289077;
    for (var t=0.0; t<(pi*nRev); t+=0.05) {
    	var x = (R+r)*cos((r/R)*t) - a*cos((1+r/R)*t);
      var y = (R+r)*sin((r/R)*t) - a*sin((1+r/R)*t);
      ctx.lineTo(150+10*x,150+10*y);
      kml[count] = "<Placemark><styleUrl>#z1</styleUrl><Point><coordinates>"+(y*0.0002+sgm_y)+","+(x*0.0002+sgm_x)+"</coordinates></Point></Placemark>";
      count+=1;
    }
    ctx.stroke();
    console.log(kml);
  }
}