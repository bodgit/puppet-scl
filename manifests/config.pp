# @!visibility private
class scl::config {

  $::scl::repos.each |$repo, $attributes| {
    yumrepo { $repo:
      *      => $attributes,
      notify => Class['::yum::clean'],
    }
  }
}
