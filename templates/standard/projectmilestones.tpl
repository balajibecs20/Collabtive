{include file="header.tpl" jsload="ajax"  jsload1="tinymce"}
{include file="tabsmenue-project.tpl" milestab = "active"}

<div id="content-left">
    <div id="content-left-in">
        <div class="miles">
            <div class="infowin_left"
                 id="milestoneSystemMessage"
                 data-icon="templates/{$settings.template}/theme/{$settings.theme}/images/symbols/projects.png"
                 data-text-added="{#milestonewasadded#}"
                 data-text-edited="{#milestonewasedited#}"
                 data-text-deleted="{#milestonewasdeleted#}"
                 data-text-closed="{#milestonewasclosed#}"
                 data-text-opened="{#milestonewasopened#}"
                 style="display:none">
            </div>
            <h1>{$projectname|truncate:45:"...":true}<span>/ {#milestones#}</span></h1>

            {include file="projectLateMilestones.tpl"}
            {include file="projectCurrentMilestones.tpl"}
            {include file = "projectUpcomingMilestones.tpl"}



        <!--block End-->

        {literal}
            <script type="text/javascript">
                try {
                    var accord_miles_late = new accordion('accordion_miles_late');
                }
                catch (e) {
                }

                try {
                    var accord_miles_new = new accordion('accordion_miles_new');
                }
                catch (e) {
                }

                try {
                    var accord_miles_done = new accordion('accordion_miles_done');
                }
                catch (e) {
                }
            </script>
        {/literal}

    </div>
    <!--Miles END-->
    <div class="content-spacer"></div>
</div>
<!--content-left-in END-->
</div> <!--content-left END-->

{literal}
    <script type="text/javascript" src="include/js/views/projectMilestones.min.js"></script>
<script type="text/javascript">
    projectMilestones.url = projectMilestones.url + "&id=" + {/literal}{$project.ID}{literal};
    var projectMilestonesView = createView(projectMilestones);
    lateProjectMilestones.url = lateProjectMilestones.url + "&id=" + {/literal}{$project.ID}{literal};
    var lateProjectMilestonesView = createView(lateProjectMilestones);
    upcomingProjectMilestones.url = upcomingProjectMilestones.url + "&id=" + {/literal}{$project.ID}{literal};
    var upcomingProjectMilestonesView = createView(upcomingProjectMilestones);
</script>
{/literal}
{include file="sidebar-a.tpl"}
{include file="footer.tpl"}