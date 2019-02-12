var responsiveTables = function() {
  $('table.list').each(function() {
    $self = $(this);
    $self.addClass('responsive-table');
    var dataLabels = [];
    $self.find('th').each(function() {
      let childLink = $(this).children('a:first');
      dataLabels.push(childLink.length > 0 ? childLink.text() : $(this).text());
    });
    $self.find('td').each(function() {
      $(this).attr('data-label', dataLabels[$(this).closest('tr').children().index(this)]);
    });
  });
};
