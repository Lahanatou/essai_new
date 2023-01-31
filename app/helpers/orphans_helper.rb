module OrphansHelper
  def choose_new_or_edit
   if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
     confirm_orphans_path
   elsif action_name == 'edit'
     orphans_path
   end
 end
end
