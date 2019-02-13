var responsiveTables = function() {
  $('table.list').each(function() {
    $self = $(this);
    $self.addClass('responsive-table');
    var dataLabels = [];
    $self.find('th').each(function() {
      let childLink = $(this).children('a:first');
      dataLabels.push(childLink.length > 0 ? childLink.html() : $(this).text());
    });
    $self.find('td').each(function() {
      let dataLabel = dataLabels[$(this).closest('tr').children().index(this)];
      if (dataLabel.length > 0) {
        $(this).attr('data-label', dataLabel);
      } else {
        if ($(this).children().length == 0) {
          if (dataLabels.length != 0) {
            $(this).css('display', 'none');
          }
        } else {
          $(this).attr('data-label', '');
        }
      }
    });
  });
};
