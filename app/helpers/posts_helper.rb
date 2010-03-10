module PostsHelper
  def post_pagination
    will_paginate @posts, :previous_label => '&#8592; Older',
      :next_label => 'Newer &#8594;'
  end
end
