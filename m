Return-Path: <open-iscsi+bncBD54HHNYIIIKTKWNSEDBUBE2FZD4U@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FFB4DCA18
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Mar 2022 16:35:07 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id v67-20020a1cac46000000b00383e71bb26fsf1783126wme.1
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Mar 2022 08:35:07 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1647531307; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZPbAXa9dRWmfB8b9WmPpBV0Lwr5+usBS6wLBKMpQTdKnUNH8qgGPaufRku+QCNZf6
         uiHPS8s4w5MIshR2ASULNDE2V4jQertuzNrH4/F4WyPPiRFbGuHylAxSSexyfHZH6jYU
         uWCLKcHIaMleY/RDE3pn6mkgAYeQJSSRlAeDL/G47lskWtwjpXhy5RKLfBqo517cnyw3
         jWE6JF53mI/5ou7OZeGJ9EHpIbDAVRquA7KuMQtyjckCNEIvqY7l6WK/dqU+r89D6SwY
         Mvj29k8iTRj9Vteh8Kid7LR4yjRq+vp8fzv1Q7MQmZCKwhD2tJov4oj5Yw4FbqkwgtQm
         S4bQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:dkim-signature;
        bh=qY8t6P0G3YBWPw/GNudPgX1HAz8nP81hsOxuadRlo6s=;
        b=lnF7TsoXRLnpOQvt1fw349iIALv8NVZ10hF+0AmGABQr21czwPvpIwizGJFgNopXg9
         Ek9tYOfL51LdRCCavpxbfVWAh+RUq81Chd+Bwcsd7DpNXKf7mdVlEbUA+OBIM5RreZqV
         W7EGn05K0XKGeMiDsjVIlbrwY9Ft2yvOhaJA3Tq36TxkKLwVQELezLuyZTgS6N5okjLd
         Z6woGxEjoSxoxIIEUnPieERhB/qxM08HGTrqtYkjg7EZMko3AI7h1KwodggibrL3oWPq
         CFmyGE8AjV2VA5Vf0/1C0Tiec4OTY4AvOmhtaPCaMNEczBbLXBBCmlWXVrV3SgTrsX9i
         QBMg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=PLoKT7Wi;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qY8t6P0G3YBWPw/GNudPgX1HAz8nP81hsOxuadRlo6s=;
        b=onZg/HNLSptd6iloeZP3D2ks8goGQHFJWubkDG9sdjP4cwhOlPpAUrM1xtKMLKzQp4
         sI7DzLr9FMLcT+lHSPVXkAmaUKL1rraGC3omu1Oer6FLxsJgvhlF2SEqKilnYLxjUL8i
         XaOrrIG9Ai58rJ3/HzllDYHDseg6GxftmMj3iyT/iSOnEfLSniQLaKKUbeHv4FN7FSda
         c4DhsYslroIb9Ifsc2kCABX3SbcZOAkZqFK/w12E5lW+tOyUJF7Hk2+KYTcDgBSiFD3v
         wHz/XZC1hxmVh5P87c/zgpmq+fcqxfG5y9foZtRon/bqvVy3RHEVS4zk/YZMhB50jB9A
         3cMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qY8t6P0G3YBWPw/GNudPgX1HAz8nP81hsOxuadRlo6s=;
        b=M423GCJ/LMnAxnmz4IYqlv78LiH4j8kTO08ENKHVHzmc5c5jq+s6F2sFPWZd+Hn9Zf
         hydWmd38B762QI2aNxZfBERfYFQEgRG14vLoPKmJ/kLittRmErURJqTV/xmeXJE1vXcy
         AO5/mgs3JsySfmb4aM+247vxMlWfyDktWxl1CI1E2HJLK+hsjUrzqP4TwIqgLXOiAgqy
         qWXfoy6Xa1R89q92/aTnX6z6Rj5exXVRqGGiDgHVD9upLWKrH4wm8n+Ajz/uBFnUgpuF
         n8EC1ESMW3NzlX6t0zrGEyfWozXsbX5tH9Wlz2rBydpj1dQipg5YzsmxFEA6ke/vgzX+
         v87Q==
X-Gm-Message-State: AOAM531p3uI65P2n8Chsc6SMOqK4VuaRe5w1cUjTGm3R+YGXjqLwl9bq
	0nl7XWzj5+HP4Vbnxpkn2qU=
X-Google-Smtp-Source: ABdhPJxyzh7LQICQjnaudSGHOOyZiRrcIm/SqMq2jkl8hiKMXonnVijjrsMcX7q6Exr9M3bAHPiHKg==
X-Received: by 2002:a5d:47a1:0:b0:1f1:d733:ea8d with SMTP id 1-20020a5d47a1000000b001f1d733ea8dmr4405976wrb.557.1647531307122;
        Thu, 17 Mar 2022 08:35:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:1d94:b0:1f1:dc97:d9c4 with SMTP id
 bk20-20020a0560001d9400b001f1dc97d9c4ls588953wrb.3.gmail; Thu, 17 Mar 2022
 08:35:04 -0700 (PDT)
X-Received: by 2002:a5d:5887:0:b0:1f1:eb44:9596 with SMTP id n7-20020a5d5887000000b001f1eb449596mr4733225wrf.249.1647531304806;
        Thu, 17 Mar 2022 08:35:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647531304; cv=pass;
        d=google.com; s=arc-20160816;
        b=FtFvAoVrJSE6mnwrepR25nRxqlBhF0ng9qxI75B07+ijSVhDLsOy5ohRbHjAtuyfKw
         qIW1sZdVz1yDGnPgLXtx5iLQ/nHxRCIrgx7R38me2x8hbewZL2NUJ/HoNi1oynD4UhnD
         BcoZBzGG4BbN12lxMFKg8XZuUjN29DLlUpOWf7MuMqrUtrZHIC/whBdu5MvDIPeL7w1d
         OOv8qhj4rMs8PNV1i8+gSXVEEu+GWJsVWX1SstbF1J7p64Y3q/nvZp9U1h2LKZJlxkNv
         q+h9g1uAgV21CkLRtOty/zsXIphc6EmcYskLGV1OK/3xYP+1SNKyV77qE1ouypZoEbA1
         n2OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=ak7+Mb4/2OUTc99v/UPWVXrJeIedZsru4FwBXvrIXHY=;
        b=PaZ99O6S3N+mE/IGuYZwbcOFRhVl3XgUgXveviqtaZ71xQR68FlncNFpRRb5dgqGTy
         Vf2YaBhlLalq9MvehMuZMMuARx58E4WEr8ax8tnQUlc53+BpBNj+ip198cgKkHVrHeff
         RXV+tsVwkxeHUyveXit2bgFByhu6dgmnZogR4zmtRdfFkqxhNvsLKljll+oUurCrRRpM
         IL8u/E/bDeqgmspcj5EM4o2SLcasYINvqfP0QD5iMR7wEgDzft2V2JgIo2tg12flUDX2
         ih2zsWDaymuO32YFeAdTMNkTItg9BrSU9C9rtXoCmKfGzq2KlR9eW0YPE474mtEoWW0f
         UfVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=mimecast20200619 header.b=PLoKT7Wi;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) smtp.mailfrom=lduncan@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.109.102])
        by gmr-mx.google.com with ESMTPS id r6-20020a5d6c66000000b00203e922f6ccsi160938wrz.8.2022.03.17.08.35.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2022 08:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 194.104.109.102 as permitted sender) client-ip=194.104.109.102;
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2050.outbound.protection.outlook.com [104.47.12.50]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-31-mAx8KMb6Oxi4L72o6fiShg-1; Thu, 17 Mar 2022 16:35:03 +0100
X-MC-Unique: mAx8KMb6Oxi4L72o6fiShg-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ep9gdM9nrGPK+zftLjqpv6h1q4M5k0Ag8AbVXYAsVvdoY0Lo05/TbJAn532e8y3jwpxJo7nEzt1bjwOwrzRYFJsQh/B+VgO+ORt9VXGlzybNQPCgJU6ksng5J4s4w6gSS37ezTx6kNJREshWr7+qzoWEnE6qMX0tf5vkdBAd+ekPR60apneKETxHb3mrbssL14Lt7qoK6zHc7RxpPgU0WyXMJskbeyAAdbdZDZR2Ak4acw7etky1faxxRQUrpWO5f8B2Ke+MEik6zwdJKSWS5iCwrR1JG0L2EuHcVNTPfMObRBs+HM4wX2g8kabOXBvGGhwFiBtUnOpqWVcsummV0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ak7+Mb4/2OUTc99v/UPWVXrJeIedZsru4FwBXvrIXHY=;
 b=Lu9+v7oAxvKRZ7ZS/QZ7twLUOm6LdZY67JACW2YhzEq5LHBodMdldTjeEeS6b7/b9VVCwtUdTKj+9UkbFBRa9h1qmmyVb2e4VORPhSWorGzw0epaHl43W7K/A4472u3ygAYCql/Yb/m25wVr59oUXu0Vf9kvGNFfzkYOPhPkv8rN7FQO0HAodVMotlQ5rFjDaWm6XhS/los6TcDeoX7mYL9IWIk2FsmQdIHdxMjugeIdhy9+NpNluI0q7xzEgBCIVJ/Kw373YsZED+6WwKk0oyFXdWumyRHNnnGZyZkxIp7w0c7zG4CAY4TPH2X0SLky8NbGNhSv1lWmg0ebeY+AgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM0PR04MB4836.eurprd04.prod.outlook.com (2603:10a6:208:cd::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Thu, 17 Mar
 2022 15:35:01 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::14d7:55aa:6af:72d7]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::14d7:55aa:6af:72d7%6]) with mapi id 15.20.5081.017; Thu, 17 Mar 2022
 15:35:01 +0000
Message-ID: <bb6aefcf-92aa-ef41-27de-1e3e0b227761@suse.com>
Date: Thu, 17 Mar 2022 08:34:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] scsi:libiscsi: remove unnecessary memset in
 iscsi_conn_setup
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Mike Christie <michael.christie@oracle.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo <wubo40@huawei.com>,
 linfeilong@huawei.com
References: <20220317150116.194140-1-haowenchao@huawei.com>
From: "'Lee Duncan' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <20220317150116.194140-1-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: AS8PR04CA0130.eurprd04.prod.outlook.com
 (2603:10a6:20b:127::15) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b63c3ef-087e-4c2b-7e64-08da082bb339
X-MS-TrafficTypeDiagnostic: AM0PR04MB4836:EE_
X-Microsoft-Antispam-PRVS: <AM0PR04MB4836D5B7A8F435B536473A7ADA129@AM0PR04MB4836.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iqZ5e91ih7lHZZbYaAfjqW+8LTmiVd1bUg0bKWoucgT5OmnjEDSCnEk4ty3aEsyon5Inr3wSrjUiasSfOnns1vScppVrziXTcOHnVbUE5NEZSuU9/pWVAwPQG7sNSv3aYEpaGwJ8BzGuuHIUVmWCo+9DajFbMZIr7fbeHLpL+je6Poy4dzkpgvYTZFhHn3kFeGs9zjdpPHw2m3Ktzg/uS3i1HWWds4kovBbJjFB/IDdT1fVATxw+er6JoPsI2ZekdLT8jshmgcn3tPIQrH3v7BfO96TYM9ruXEl2ZGOrnzZ1pef2sXMR17F4VpvtI2VD0spirnDteGF/t8NRAfwsjZVZp9k0Ts5VoRCVAie9qcLHyi9uO1emTzFWz2c8ezHv1mP7gNEV9e954R1M+YuBxtzUEzfMUnAQqBArSn6jbsEuC+xFJ70Gjv8KaOBgtqdsZFGmomzxcqfkjBQUk8Yy9wv/9TJy0AjeLUZC5BJSJ04d0Ta1f06ozR5Ae2wti0+OaB7Mv8jAsnFPDrPcXiMmt3Yk5eQKhd0dN01p6eFzpdocYj4FR8o85YIhO6RnrvS1sckdK8fxs48GEBuyb9hio38xTCbs153647CVYb4tXKPgCjZaZJcB7SvTYOuawZQR+zwfTEbF7Ihck9EzMRI/VIRU7SjSdeYE4y5dtQ4X3ULAYGUmR22lxHxpjG8K4YGxIHsQi0sGsGLri/jZJieKnADX4G4mVP9CEDgoG0ARkDc=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(54906003)(110136005)(2906002)(86362001)(508600001)(83380400001)(6486002)(31696002)(4744005)(31686004)(316002)(2616005)(5660300002)(7416002)(6666004)(6512007)(36756003)(6506007)(53546011)(66946007)(66556008)(66476007)(4326008)(8676002)(186003)(26005)(8936002)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTVJdE9zY2g5b3ZCM05NK2hRRlErWUlaMTJCZTZkdTFZRzMxWk5ydjBOaTRs?=
 =?utf-8?B?a3NXRmc2VjJLVEF3a3BQa0ZrQ2RKdGIzZDBOeGJnVUN5cCtNYVFQL3c0b21R?=
 =?utf-8?B?TWhIMTI3dzVRUW0raVcwVnZ5NUpyQi96UEhuQXZMSW94d25GTUpMZWVVY2s0?=
 =?utf-8?B?S1lEeFZiSW14S2xCU0N5M2pqS21kNFdtbU1qdWNNOVdSK3ZjWG1hU3dFcWUr?=
 =?utf-8?B?ZnZRVUg4L2REenJVbTAvaWZoSE53c1FtN2ROVzNNNXZLeHNCbWJCQnVhVm52?=
 =?utf-8?B?MHpja3pUd2VXQlB1RWwvQmNoaUxHTDAxU1puK3hWSWlLSDY4M1I4K3hvOGp0?=
 =?utf-8?B?UXJZUS9yRzFnOVZ5YW1oQ1dYdHRIY2tWcjk1dkNZSkg4SFBXeTBGTjNrZnlN?=
 =?utf-8?B?ZVZzRmJJcGVScFVwUnl6eTNUek40VUlnbWUwc213NExLRDZ6S1p0azBiMDFB?=
 =?utf-8?B?c25BeFhHeldwcEY5dnErd1U2VkliQnBxRGhESDJ1QVlvYjlDMmdJRnNQVk5a?=
 =?utf-8?B?dzIwYncxNmNhYURLV2NsVmZiQW44OWdnVXEwdm9ia25TSGlNK245ZDNkK29k?=
 =?utf-8?B?Yk1KUTZvRS93TlVBTmMzOURzMWtBMTVLc2NXN0RzNkhzTmNzbStTVkI5L2xR?=
 =?utf-8?B?cjVlTFlCb01oUC9xam12ZStFTEFXYUxmM0hzYVJ0UHBWSzB0RXJraHdjMlBI?=
 =?utf-8?B?R1cxUnVNeVZoVFM4MU4zYXNnc1NpWlVzeDQxSDV4Q05jR0IxeUlwc0J4aEgv?=
 =?utf-8?B?eWVUWGV2dXZDMHl2OG5ydjdFUGRoOE5TMWJ6RElWVnlyVkJITFR6VGJTa3l5?=
 =?utf-8?B?ZUhYeGVGeit0UStkODlCSVNLYnBxRk90SUZtb3RwQVd3RDNIb2N5LzU0Ynhs?=
 =?utf-8?B?OFlCeUVwemNiNjkwVXFVL2ozSmppc3FSN3l6UEhsZ1lQYzhrdm1WZGgyZW04?=
 =?utf-8?B?RWxnajVFOEdNd0VRYWxtbE9HSUs1UGQxTGIwUUdEMi82WlZYT3EySWVHUm1t?=
 =?utf-8?B?TnZyRGN2a21ZcUZDazJsbWp4VFM1QUowR0c5N2lTaWNBVC9iTGxFb2w0ZlRo?=
 =?utf-8?B?THdCbmFlVUJKOHZCOTJyTWd1YitUbkpIYk5zQmtuV1RPdWc0SkZ6WTV0NS81?=
 =?utf-8?B?S1dVS1M3enFjSmE5b2dxV1BHb1lSYTY1MVZaNDVMMXE4dXhvZkhjY1d5MjdQ?=
 =?utf-8?B?WEhJYVFDQjZZUlVvTjNFb0VJbml3Q1JHSTRqTnlKVXdaRXFaZUN3WDN4Z0pT?=
 =?utf-8?B?NDZiVkxqWHZZRnl2UVQvUXluMGkvcDRJbWtVYm5Bdzl4d21MMDhweVZqcHg4?=
 =?utf-8?B?VG1GaGtkdklZOTkrdzFBcUo5ZlJGTGUyS1Axd1hldW02NjM5UEhoa3FlbnJY?=
 =?utf-8?B?c0J3QlpMbGVVU3FmVjQwS0h4NGdrY2ROZVoveEorWklRVVZkV2h1T0UvYTJ5?=
 =?utf-8?B?V3pLWUJhMjFEWDc3L2M0OE1QZFByRWVOYkllNkp4RGk3cFRLTlpOWXJLRVEv?=
 =?utf-8?B?aWY4UlJhRWY3ejdSMG5DV0cvdzZsWnFOcDRkWTFERW9CTEJpd0IrYm56NHkx?=
 =?utf-8?B?SWd1SUZnMDNpK2IwUDBRNSt1bHoxdDVzZnlQRHRtUFFRVExPSWtGa2p1K05t?=
 =?utf-8?B?cEVveko0ZldTWmRKRytKWm5tT01LRkVoaTNDaTdtWWI0ZExSRExWeUhBbVNW?=
 =?utf-8?B?cGFxU3l5d1R5QUxLZmlNNzVIUDFQZEdqWC9Rd2dxWk9takJYZkFuZVk0N0VX?=
 =?utf-8?B?VTNmT0xMa2xuMHg0OGZBa1RqQzlLam9yWUl2VzlWODY2NU55QkZqcGRUQUhr?=
 =?utf-8?B?d0FEbldnUnBxbmtJSU1nL0hLcUVHT2F0bEkzQnJWQTJMa2RlYmR0Q0VvemJI?=
 =?utf-8?B?RENUZk5HZWovSDI2cHI3Tk01UWRNT1J5SDNDZFRUK3Qwc3Nqc202N20rQnY4?=
 =?utf-8?Q?F6NHEDq1+lFCtjEF/3k8fKeF+5YVqS7w?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b63c3ef-087e-4c2b-7e64-08da082bb339
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2022 15:35:01.1101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZuCjvS4ayw1MjAbPfVGCV785+dEMml65Q5TRW8h55e2MUOWjf50uq0IYkLV+rhX/zElwGSO0/U/arOiqi1XXMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4836
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=PLoKT7Wi;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com
 dmarc=pass fromdomain=suse.com);       spf=pass (google.com: domain of
 lduncan@suse.com designates 194.104.109.102 as permitted sender)
 smtp.mailfrom=lduncan@suse.com;       dmarc=pass (p=QUARANTINE sp=QUARANTINE
 dis=NONE) header.from=suse.com
X-Original-From: Lee Duncan <lduncan@suse.com>
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

On 3/17/22 08:01, Wenchao Hao wrote:
> iscsi_cls_conn is alloced by kzalloc(), the whole iscsi_cls_conn is
> zero filled already including the dd_data. So it is unnecessary to
> call memset again.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Reviewed-by: Wu Bo <wubo40@huawei.com>
> Reviewed-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/libiscsi.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index d09926e6c8a8..cf4211c6500d 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -3045,7 +3045,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
>   	if (!cls_conn)
>   		return NULL;
>   	conn = cls_conn->dd_data;
> -	memset(conn, 0, sizeof(*conn) + dd_size);
>   
>   	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
>   	conn->session = session;

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bb6aefcf-92aa-ef41-27de-1e3e0b227761%40suse.com.
