using System;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using Microsoft.SharePoint;
using System.Collections.Generic;
using SharePointWebFeature.UpgradeActions;
using System.Diagnostics;

namespace SharePointWebFeature.Features.Feature1
{
    /// <summary>
    /// This class handles events raised during feature activation, deactivation, installation, uninstallation, and upgrade.
    /// </summary>
    /// <remarks>
    /// The GUID attached to this class may be used during packaging and should not be modified.
    /// </remarks>

    [Guid("d05ecc37-73cd-4681-b1c6-6cdcfeb9c34e")]
    public class Feature1EventReceiver : SPFeatureReceiver
    {
        // Uncomment the method below to handle the event raised after a feature has been activated.

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            Debugger.Launch();
            int a = 2; // google: GAC
        }

        // Uncomment the method below to handle the event raised before a feature is deactivated.

        //public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        //{
        //}


        // Uncomment the method below to handle the event raised after a feature has been installed.

        //public override void FeatureInstalled(SPFeatureReceiverProperties properties)
        //{
        //}


        // Uncomment the method below to handle the event raised before a feature is uninstalled.

        //public override void FeatureUninstalling(SPFeatureReceiverProperties properties)
        //{
        //}

        // Uncomment the method below to handle the event raised when a feature is upgrading.

        public override void FeatureUpgrading(SPFeatureReceiverProperties properties,
                                                string upgradeActionName,
                                                IDictionary<string, string> parameters)
        {
            SPSite site = properties.Feature.Parent as SPSite; // site collection

            SPWeb web = site.RootWeb; // target web site

            NewFieldUpgradeAction instance = new NewFieldUpgradeAction();

            instance.Execute(web, parameters);
        }
    }
}
