var Template = {
	load: function(link, html){
		var link_id = Template.link_id(link),
				title = $(link).text();

		var attributes = { href: link.href, 'class': 'tab' };
		var $tab = $('<li />', { 'data-template-id': link_id })
			.append( $('<a />', attributes).text(title) );

		$('#tabs').append($tab);
		$('#template-content').append(html);
	},
	focus: function(link){
		var link_id = Template.link_id(link);

		$('#tabs > li a, #template-content > li').removeClass('active');
		$('#tabs > li[data-template-id=' + link_id + '] a,' +
			'#template-content > li[data-template-id=' + link_id + ']').addClass('active');
	},
	is_opened: function(link){
		var link_id = Template.link_id(link);
		return $('#tabs').find('li[data-template-id='+link_id+']').size();
	},
	link_id: function(link){
		return link.href.match(/(\d+)+(\/edit)$/)[1];
	}
};

jQuery(function($){
	$sidebar = $('#side-bar a');

	$sidebar.bind('ajax:success',function(el, html, status){
		Template.load(this, html);
		Template.focus(this);
	});

	$sidebar.live('click',function(e){
		if(!Template.is_opened(this))
			$(this).callRemote();
		else
			Template.focus(this);

		e.preventDefault();
	});

	$('#tabs a').live('click',function(e){
		Template.focus(this);
		e.preventDefault();
	});

	$('li.active ol.toggle-content a').live('click', function(e){
		var $li = $('#template-content > li.active');
		// activate tab
		$li.find('ol.toggle-content a').removeClass('active');
		$(this).addClass('active');

		// display appropriate view
		var view = $(this).attr('data-view');
		$li.removeClass('form-active')
			.removeClass('code-active')
			.addClass(view + '-active');

		e.preventDefault();
	});
});