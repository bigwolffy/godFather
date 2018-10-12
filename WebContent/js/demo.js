$(function(){
	var $table=$('table');
	var currentPage=0;
	var pageSize=2;
	$table.bind('paging',function(){
		$table.find('tbody tr').hide().slice(currentPage*pageSize,(currentPage+1)*pageSize.show();

	});
		var sumRows=$table.find('tbody tr').length;
		var sumPages=Math.ceil(sumRows/pageSize);
		var $pager=$('<div class="page"</div>');
		for(var pageIndex=0;pageIndex<sumPages;pageIndex++){
			$('<a href='#'><span>'+(pageIndex+1)+'</span></a>').bind("click",{"newPage":pageIndex},function(event){
				currentPage=event.data["newPage"];
				$table.trigger("paging");
			}).appendTo($pager);
			$pager.append("");
		}
		$pager.insertAfter($table);
		$table.trigger("paging");
});