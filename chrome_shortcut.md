# First task

The task is to export survey data from Chameleon, you need to do it for theses surveys:

* https://app.chameleon.io/surveys/69b3fe28e56a82001c1a1e5b/analytics
* https://app.chameleon.io/surveys/69c150da00d733003cd270f1/analytics
* https://app.chameleon.io/surveys/69c14fdc920932006fef960a/analytics

Repeat these process for all links above:

1. Navigate to the analytics page for the specified survey in Chameleon.

2. Once on the analytics page, scroll down past the initial metrics/charts until you reach the "Micro survey responses" section. This section is distinct from the "Total interaction" section that appears elsewhere on the page.

3. In the "Micro survey responses" section specifically (not in any other section), locate and click the download button. Be careful to identify the correct download button - there may be other export or download buttons in different sections of the page (such as the "Total interaction" section), but you must only use the download button that appears within the "Micro survey responses" section.

4. After clicking the download button, an export modal will appear. In this modal, first click to check the checkbox for "Include all user and company attributes", then click the "Begin Export" button to initiate the export process.

5. Wait for a confirmation message to appear indicating the export has been initiated or completed.

CRITICAL: Make sure to use the download button in the "Micro survey responses" section only, not any export buttons in other sections like "Total interaction".


# Second task
Start at: https://app.chameleon.io/segments/6a0ab13d8759ec0037524c29?sort_by=_user%3Ais_beta_user&sort_dir=desc

You are viewing a user segment page in Chameleon.io. The page displays "Customer beta users" segment with 68 users shown in a data table. The page has a left sidebar with navigation items (Home, Copilot, Experiences, Tours, Tooltips, Embeddables, Microsurveys, Launchers, Demos, Automations, HelpBar, Styling, Users, Governance). At the top, there are three tabs: "All Users", "Companies", and "Segments" (currently selected).

The segment table shows:
- Header row with "BACK TO SEGMENTS" link
- Title "Customer beta users" with a star icon
- Blue text showing "68 Users"
- Active filters displayed as pills: "isBetaUser is true" and "Email does not contain @garmainspect.com"
- Buttons in top right: "Create new", a column visibility icon, and a three-dot kebab menu icon

**Your task:** Export all attributes from this user segment as a CSV file.

**Steps:**
1. In the top-right area of the page (next to the "Create new" button), locate and click the three-dot kebab menu icon (vertical ellipsis button)
2. From the dropdown menu that appears, click on "Download CSV"
3. A modal dialog will appear centered on screen titled "Export 'Customer beta users'"
4. In the modal, you'll see three radio button options under "Data to include:":
   - "Visible columns" (Only what's shown in the table)
   - "All attributes" (Every user and company attribute) 
   - "Identifiers only" (User ID, email, and company ID)
5. Select the "All attributes" radio button by clicking on it - the filled radio button indicator should move to this option
6. The "Export format" section shows two options: "CSV" and "Google Drive" - CSV should already be selected
7. At the bottom of the modal, click the "Begin Export" button (dark colored button on the right, next to "Cancel")
8. Wait for a confirmation to appear in the top right corner


# Third task
Navigate to the Chameleon.io embeddables analytics page at https://app.chameleon.io/embeddables/69aee620006ecc002cb5269f/analytics.

In the "Embeddables Performance" section, locate the date range selector which shows two date fields separated by an arrow. Click on the start date field (the left date field) to open the date picker calendar.

In the calendar picker that appears:
- Use the navigation controls (left/right arrows at the top of the calendar) to navigate to the correct month and year for the start date
- Click on to set May 18, 2026 as the start date
- The end date should automatically set to the current date
- Click the "Apply dates" button (a dark button at the bottom right of the date picker) to confirm the date range selection

Once the date range is applied and the page refreshes with the filtered data, record the following three key metrics:

1. **Goal number**: Located in the "Embeddables Performance" section on the left side, below the performance graph. Look for the blue "Goal" icon followed by a number (displayed as "51" in this example).

2. **Actions number**: Located in the middle column of the "Embeddables Performance" section, marked with a purple "Actions" icon. The number appears prominently (displayed as "114" in this example).

3. **Experiments Starts number**: This is CRITICAL - scroll down to the "Experiments" section below the "Embeddables Performance" section. Under the "Test Group (included)" row, look for the text "Starts:" followed by a number on the right side of that row (displayed as "431" in this example). NOTE: This must be the number from the Experiments section at the bottom, NOT any other "Starts" number that might appear higher up on the page.

Record these three numbers for reference.

4. Save Metrics to File
After recording the three key metrics from the Embeddables Performance page (Goal, Actions, and Experiments Starts), use JavaScript executed in the browser console to generate and automatically download a plain text file to the user's Downloads folder.
The file is named chameleon_metrics_YYYY_MM_DD_HH-MM.txt (replaceing the timestampe placeholder with the actual time the the file is create) and contains:

The embeddable name and date range
Goal number (from the Embeddables Performance section)
Actions number (from the Embeddables Performance section)
Experiments Starts number (from the Test Group row in the Experiments section)
A timestamp of when the export was run

The JavaScript creates a Blob from the text content, generates a temporary object URL, programmatically clicks a hidden anchor element to trigger the browser's native file download, then cleans up the URL. No additional tools or apps are required — the download is handled entirely within the browser.


# Task four
Start from: https://web2.e-studio.dk:2096/cpsess7931504358/3rdparty/roundcube/?_task=mail&_mbox=INBOX.Beta

- Email folder: The folder/mailbox containing the emails to process (e.g., Beta, Inbox, etc.)
</inputs>

You are processing emails from a specific mailbox folder in Roundcube webmail to download CSV attachments. Here's the detailed workflow:

VISUAL CONTEXT YOU'LL ENCOUNTER:
- The Roundcube interface has a dark blue left sidebar containing navigation options: Compose, Mail, Contacts, Calendar, Settings, Webmail Home
- Below the main folders (Inbox, Drafts, Sent, Junk, Trash, Archive) is a "Beta" folder 
- The email list is in the center panel with white background
- Email actions toolbar is at the top with icons for: Select, Threads, Options, Refresh (left side) and Reply, Reply all, Forward, Delete, Archive, Junk, Mark, More (right side)
- Individual emails show sender name, timestamp, and file size indicators

STEP-BY-STEP WORKFLOW:
1. Navigate to the Beta email folder in Roundcube webmail and look for emails in the list. If the email list is empty, wait 60 seconds, then click the Refresh button in the toolbar and check again. Repeat this up to 10 times (total wait of up to 10 minutes) before giving up. Once at least two emails appear, proceed to the next step.
2. Look at the email list - you'll see email entries with sender names, timestamps, and subject lines
3. Working from the top of the email list, click on the first email
4. The email will open in the right panel showing:
 
   - A prominent GREEN button labeled "Download the CSV" centered in the email
5. The green button is a link. Get the href and remember it

6. Above the email there is a toolbar. Click the archive button. 

8. Repeat until there are more emails the email list

9. Final step is to save the links you have recorded to a file called csv_links_YYYY_MM_DD_HH:MM,txt (replaceing time placeholder with actual time stamp)