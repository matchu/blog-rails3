module PostsHelper
  def post_pagination
    will_paginate @posts, :previous_label => '&#8592; Newer',
      :next_label => 'Older &#8594;'
  end
end
