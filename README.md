# AWS-Architecture-Icons-for-Affinity-Designer
AWS Architecture icons in SVG, packaged up as Affinity Designer Assets (.afassets), complete with categories and named files

## How do I use these?

Pull up the Assets window in Affinity Designer (Window -> Assets), click the burger menu (top right of that window) and click Import Assets.

## How did you do it?

A fairly disgusting bash script to take the `Asset Package` folder from https://aws.amazon.com/architecture/icons/ and move all the `.svg` files into appropriate folder hierarchy for creating Affinity Designer Assets out of.

Then I simply dropped each of the subfolders into Affinity, and exported the Asset files (as `.afassets`)
