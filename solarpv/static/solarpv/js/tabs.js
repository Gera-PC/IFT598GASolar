const actTab = document.title;
const tabCont = document.getElementById(actTab).textContent;

const tab = (
<div>
	<a class="active" target="_self" href={actTab}>{tabCont}</a>
</div>
);

ReactDOM.render(
	tab,
	document.getElementById(actTab)
);