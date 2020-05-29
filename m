Return-Path: <open-iscsi+bncBD54HHNYIIIIHTOE6YCRUBF4BVLBA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 868931E8161
	for <lists+open-iscsi@lfdr.de>; Fri, 29 May 2020 17:13:11 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id v1sf2580111qvx.8
        for <lists+open-iscsi@lfdr.de>; Fri, 29 May 2020 08:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDO6ZKm5XpHjYK5VT10wsPmPl9a8PHQeNF6bjrU3pgg=;
        b=njg0B6Q1rdj4vAEI57BpocrwnChmvvzShheEC4IvudDgdNyC+1532yHxFKapw2OZoU
         9YxhW8q91oRNL++TEJuYkv6PEew0ebtmloHt5v2cgwNukH21XDk3g5/1L0pVeZbj3Ua6
         mMm8/qzmq6cCdyiqcVY1iUbicU+KS8kWqS/a8/zgVQYIADr7JFqfEN/SMH0ldRx5n9T3
         4Y6WY6UqzN55zFSaBSW2yvDpWFlrffMz/bucmqvS7vrIbDIy6VJI/I7gnuJBer/S8g9w
         IwwMISoKlXZWUrMGh7aBeshlnPLrvy6kNiEE0TGrtZaO3o67GlQ1mVZindzYvt/QE1Ym
         5TrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IDO6ZKm5XpHjYK5VT10wsPmPl9a8PHQeNF6bjrU3pgg=;
        b=PBsBpt7iwpCyMgl1ghTxgqS5SgKKKGii44pJWJbDZ9Yse80vFOt+TRMTvHd8McPVJX
         6RPH4pV0Tt5CwNvXVG2AAW1bzXnZYcF/tGTbYzwsswYFI6MbCjR1945XUe2n8HejX67w
         fhzdDpNIUBcUOWJSFmhMfL/yyyeK0JuZX5HNW70uvdw0+rBiF7BU6iicRTJAet3igzqI
         Vk0Dg5V0R9YIXE+1ga3Ks9S4sq9EKVQTeC7su84KUIAjswbgxP8R0tsJjsGe4iIzNai3
         dds/uJc8Xq3jc4H9KJc4ktJnFLsHdRdigERlGbNPgcJ4vCN2c4Wfew1HQJgnjr2PZ7ks
         LwAw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530/3oHhht36ckPSqpGyxU14fYOtp9TYP1oXJfzrMp0RUSouRmmG
	HyjfG45ku1SIqDg3VSrQIbs=
X-Google-Smtp-Source: ABdhPJzZ2lKCNOW/1Imul9LFXxL0nv7ZKEDcVkrkZOgplLEd0LmGGjQ3cioseqi7owRIZL2EzpWrWQ==
X-Received: by 2002:aed:374a:: with SMTP id i68mr9355759qtb.69.1590765187933;
        Fri, 29 May 2020 08:13:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:b85:: with SMTP id 127ls2988603qkl.6.gmail; Fri, 29 May
 2020 08:13:07 -0700 (PDT)
X-Received: by 2002:a37:9d4d:: with SMTP id g74mr7818567qke.159.1590765187386;
        Fri, 29 May 2020 08:13:07 -0700 (PDT)
Received: from m9a0014g.houston.softwaregrp.com (m9a0014g.houston.softwaregrp.com. [15.124.64.90])
        by gmr-mx.google.com with ESMTPS id v64si297980qka.5.2020.05.29.08.13.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 08:13:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.90 as permitted sender) client-ip=15.124.64.90;
Received: FROM m9a0014g.houston.softwaregrp.com (15.121.0.191) BY m9a0014g.houston.softwaregrp.com WITH ESMTP;
 Fri, 29 May 2020 15:12:17 +0000
Received: from M9W0067.microfocus.com (2002:f79:be::f79:be) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Fri, 29 May 2020 15:09:59 +0000
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (15.124.72.13) by
 M9W0067.microfocus.com (15.121.0.190) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Fri, 29 May 2020 15:09:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zi3r5+8LOhxe2rfw7XQLzlIu6EOi1yoaEGzIQ+rvF3j+lJOgVpo9NE7dua8oKSTa84v/Kl4cbjYbdXiFw0HNNg6x//prucXZA04utIE7VwCyPYphrYe24kmE1zby9hYc54uH+3MGpa5iFprP2OdPI+LAU1oI3SJ2vZOskzlABxfloWq/Ndz4zWYTUMlhjDHXRfAiUFSUqbEmI7tIu56ARMQNhmWiiIt8iXqn41zJGl8FHtBZAilW4vw1MC6X0+aulx8Z4H9QtBRo8e+E5/f+crJw6BdFQUCkLc+HP/Uy4qiZrd7pHBeCX7W8qT3p9wzl0HloLK8tsKYQEH2ENpx+BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47KPmySkYRpfy1v2gYn0N6eQrgmY9ew/kS5VHB52BIw=;
 b=aGqLHrG/VqlVALS5aJK5UlootNHizD8Pw+2n09Ist5L3jLy/s39TwFO8viXA9xP8MD/524mIBjnhWORRoTdpAswnOMxEOlcoXgRub5SBVpNp6kNhXRgyeGDI/sINQJ5RAFOIzWFo8VWFtm/KJP/nPUaonIA3et6i13XubNOLjDWzxnPNHryIY2hXDHTphYc9gXbU2P2N9zq0b93Z69rcJe2xyhgBSHG0UveZBl1PVJbUKqFhSETi3cDmPbgkITmIfSmjeWKkY99l+U9DHieSCJTG5agu1C7NFj3h8x0g1FQiuTKDHogDgwyRkM8PiaUeWnzMXuX/vqitShF39rP3Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from BL0PR18MB2290.namprd18.prod.outlook.com (2603:10b6:207:48::11)
 by BL0PR18MB2211.namprd18.prod.outlook.com (2603:10b6:207:4b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Fri, 29 May
 2020 15:09:49 +0000
Received: from BL0PR18MB2290.namprd18.prod.outlook.com
 ([fe80::9ddc:db5b:9a5a:6b3d]) by BL0PR18MB2290.namprd18.prod.outlook.com
 ([fe80::9ddc:db5b:9a5a:6b3d%7]) with mapi id 15.20.3021.029; Fri, 29 May 2020
 15:09:48 +0000
Subject: Re: [PATCH] scsi: Fix reference count leak in iscsi_boot_create_kobj.
To: <wu000273@umn.edu>, <kjlu@umn.edu>
CC: Chris Leech <cleech@redhat.com>, "James E.J. Bottomley"
	<jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20200528201353.14849-1-wu000273@umn.edu>
From: Lee Duncan <lduncan@suse.com>
Autocrypt: addr=lduncan@suse.com; keydata=
 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
 Xd8p+B+giaT8a1b5hWuz85V0
Message-ID: <2d158fc5-a0b5-718d-d70a-3dfe9db22482@suse.com>
Date: Fri, 29 May 2020 08:09:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <20200528201353.14849-1-wu000273@umn.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: LO2P265CA0361.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::13) To BL0PR18MB2290.namprd18.prod.outlook.com
 (2603:10b6:207:48::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by LO2P265CA0361.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a3::13) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend Transport; Fri, 29 May 2020 15:09:45 +0000
X-Originating-IP: [73.25.22.216]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 006961b5-78fb-4d1a-d428-08d803e2540c
X-MS-TrafficTypeDiagnostic: BL0PR18MB2211:
X-Microsoft-Antispam-PRVS: <BL0PR18MB221103258A53A30790E7E00FDA8F0@BL0PR18MB2211.namprd18.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:211;
X-Forefront-PRVS: 04180B6720
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +5rrR9yO7fUzWCvazCeqPmVWxn4+VXZZAbeoWZcBZOmAT16oMlFAh3fHc0Fg1nLZQTY2QTDNGmrXJUBLXeJyVyp0a44dMiONU+Tly0W5U4aZvTL9PppoWwVTYtcorR+K9Ur4qqMGQrmrrRHAZA0Ff8R6ryPAtbXXf1onm1lGFJv9z2cxM2b8gnm4LKvlydHgDA19sZwxuEyIQ52pVga+OchYh1Qt+GzqotkIedXP6haceZq6HEHcoEz3iN0HawkTLiTdWoff3SQGIbboLlQvFMbP9JsRpGPocKXtmmpC2wFm1Gi0zLEPAfzLiTirM+RHh16eZ5I55UBPXlIpTKEgDtQwD8ucCwcCSW7d9SB+glt0DyK8PsePVkPcby4E9AcL
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR18MB2290.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(366004)(396003)(136003)(376002)(346002)(83380400001)(86362001)(36756003)(4326008)(2616005)(956004)(31686004)(52116002)(186003)(54906003)(16576012)(478600001)(53546011)(26005)(16526019)(316002)(2906002)(31696002)(66946007)(6486002)(5660300002)(8936002)(66476007)(66556008)(6666004)(8676002)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: Ah2bawDHGjMyZLkEFnAQUc+INRN3MFTtCzkBMG3dQ8mGWcMW44tmr86zaNtXZpmMk0AAQZ5tqWKZe8801a+3y5le+eGbE6kcOQ4Tqt30UqNAeb9hkSf+kr9Jd6Kclbx2Umta2q9XnLp61+NyLrZc5kKxsfCOxCmo8InToSEM++xG0X6i2bAGJyAatm76pg3Y9vA8X+s9sx3JacBRJHt0tH/Z+DoRAVd9CLnHlKKzaKbobsvmjMZst5bfgpnY65XoxYYNs6hXXJSYPP/OWbWGuL7YH6fLiGzgR13I/yAH981g7WtPapEyPXQwIa3Dd713WnHBEYaI5mJ2FBMfXNvSDYTmzYiECBcdFM8wvXbNep7hQrQaexo+0DDHrY5ItvUMnYnZ+JNW90XdnF19D093iW3TTFvP0bkx9ibWOblTdryrwlUE244OcoTBuZE3df/Aeg3sGPlRDUKXmhDmbZlTXu4Eoml/p2JIMkGRiT3bNQ8=
X-MS-Exchange-CrossTenant-Network-Message-Id: 006961b5-78fb-4d1a-d428-08d803e2540c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2020 15:09:48.5361
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tbT5qhigK9UsFJFZAnplTvtzXUTRhlOIesF+UXZIJa1twRccwqfzTaDXPl1k1Xl0+Vs4ynR05uXK8ER3qWOOLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR18MB2211
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=fail
 (signature failed);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.90 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 5/28/20 1:13 PM, wu000273@umn.edu wrote:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> kobject_init_and_add() should be handled when it return an error,
> because kobject_init_and_add() takes reference even when it fails.
> If this function returns an error, kobject_put() must be called to
> properly clean up the memory associated with the object. Previous
> commit "b8eb718348b8" fixed a similar problem. Thus replace calling
> kfree() by calling kobject_put().
> 
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>
> ---
>  drivers/scsi/iscsi_boot_sysfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/iscsi_boot_sysfs.c b/drivers/scsi/iscsi_boot_sysfs.c
> index e4857b728033..a64abe38db2d 100644
> --- a/drivers/scsi/iscsi_boot_sysfs.c
> +++ b/drivers/scsi/iscsi_boot_sysfs.c
> @@ -352,7 +352,7 @@ iscsi_boot_create_kobj(struct iscsi_boot_kset *boot_kset,
>  	boot_kobj->kobj.kset = boot_kset->kset;
>  	if (kobject_init_and_add(&boot_kobj->kobj, &iscsi_boot_ktype,
>  				 NULL, name, index)) {
> -		kfree(boot_kobj);
> +		kobject_put(&boot_kobj->kobj);
>  		return NULL;
>  	}
>  	boot_kobj->data = data;
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2d158fc5-a0b5-718d-d70a-3dfe9db22482%40suse.com.
