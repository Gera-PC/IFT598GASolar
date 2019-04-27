const navbar = (
<div>
	<nav class="nav-extended">
		<div class="nav-wrapper brown darken-3">
			<a href="/" class="brand-logo logo center hide-on-med-and-up">G&A Solar Research</a>
			<a href="/" class="brand-logo hide-on-small-only">
			<img  id="navlogo" class="responsive-img" src="/static/solarpv/images/sun.png" height="50" width="50"/>
			G&A Solar</a>
			<a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="/register"><i class="material-icons right">developer_board</i>Register</a></li>
				<li><a href="/login"><i class="material-icons right">account_circle</i>Login</a></li>
				<li><a href="/faq"><i class="material-icons right ">error_outline</i>About Us</a></li>
			</ul>
		</div>
		<div class="nav-content brown darken-2">
		<ul class="tabs tabs-transparent hide-on-small-only">
		<li class="tab" id="main"><a target="_self" href="/">Home</a></li>
		<li class="tab" id="module"><a target="_self" href="/module">PV Module</a></li>
		<li class="tab" id="performance"><a target="_self" href="/performance">System Performance</a></li>
		<li class="tab" id="analytics"><a target="_self" href="/analytics">Analytics</a></li>
		</ul>
		</div>
	</nav>
</div>
);


ReactDOM.render(
	navbar,
	document.getElementById('head')
);



const sideBarL = (
<div>
	<div class="card-panel white hoverable" >
	<div class="card-content">
	<span class="card-title sidetexttop">Overview</span>
	<div class="divider"></div>
	<span class="card-title sidetext" >PV Module</span>
	<br />
	<a href="/module#test" class="">Testing & Certification</a>
	<br />
	<a href="/module#rating">PV Rating</a>
	<div class="divider"></div>
	<span class="card-title sidetext">PV System Performance</span>
	<br />
	<a href="/performance#anal">Performance Analysis</a>
	<br />
	<a href="/performance#compa">System Comparison</a>
	<br />
	<a href="performance#cert">Certification</a>
	<div class="divider"></div>
	<span class="card-title sidetext">Data Analytics</span>
	<br />
	<a href="/analytics#mlp">Module Lifetime Prediction</a>
	<br />
	<a href="/analytics#ene">Energy Prediction</a>
	<div class="divider"></div>
	<span class="card-title sidetext">Smart Grid Technologies</span>
	<br />
	<a href="#">Coming Soon!</a>
	<div class="divider"></div>
	<span class="card-title sidetext">G&A Solar University</span>
	<br />
	<a href="https://www.asu.edu/">Visit Campus Today!</a>
	<div class="divider"></div>
	<br />
	<a id="button" class="waves-effect waves-light btn center red section" onClick={ () => getLocation()} ><i class="material-icons right">add_location</i>Find Me</a>

	<div id="map" class="section"></div>
	</div>
	</div>
</div>
);

ReactDOM.render(
	sideBarL,
	document.getElementById('sideBarL')
);


const sideBarR = (
<div>
	<div class="card-panel white hoverable">
		<div class="card-content">
		<span class="card-title sidetexttop">News & Events</span>
		<div class="divider"></div>
		<p class="sidebar">FPL Aims for Record-breaking 30 Million Solar Panels by 2030</p>
		<p><i>January 18, 2019</i></p>
		<br />
		<a href="#"><i>Read More</i></a>
		<div class="divider"></div>
		<p>Global Clean Energy Spending Dips in 2018 But Installations Rise on Lower Prices</p>
		<p><i>January 18, 2019</i></p>
		<br />
		<a href="#"><i>Read More</i></a>
		<div class="divider"></div>
		<p>100 Percent Clean Energy Goals: What Will It Take To Get There?</p>
		<p><i>January 17, 2019</i></p>
		<br />
		<a href="#"><i>Read More</i></a>
		<div class="divider"></div>
		<p>Blockchain to Shape New Trends in Energy Trading</p>
		<p><i>January 15, 2019</i></p>
		<br />
		<a href="#"><i>Read More</i></a>
		</div>
	</div>
</div>
);

ReactDOM.render(
	sideBarR,
	document.getElementById('sideBarR')
);

const footer = (
<div>
<div class="container">
<div class="row">
  <div class="col l12 s12 center-align">
	<p class="white-text">G & A Solar Research
	<br />
	7001 E Williams Field Rd, Mesa, AZ 85212
	<br />
	(480) 727-1585 | GASolar@ga.com
	<br />
	Site Map | Terms & Conditions | Privacy Policy | About Us
	</p>
  </div>
</div>
</div>

<div class="footer-copyright">
<div class="container">
	© 2019 All rights reserved
	<a class="grey-text text-lighten-4 right" href="#">G&A Solar</a>
</div>
</div>
</div>
);


ReactDOM.render(
	footer,
	document.getElementById('foot')
);