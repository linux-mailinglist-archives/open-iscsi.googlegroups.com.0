Return-Path: <open-iscsi+bncBD54HHNYIIIOH4P564CRUBFMZ3AAC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABD9213F40
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Jul 2020 20:28:51 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id v24sf36154959wmh.3
        for <lists+open-iscsi@lfdr.de>; Fri, 03 Jul 2020 11:28:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1593800931; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qf4q8m4iUfxAifnfdK6EWZsrXxF8gOnofOqCkWBeKM/EiFgnot7ec36kdARG0Gksw9
         gpyRWRuaLehbqq+FbzoqD0maei7GsZH03GbHbu8YaL2JLPoJmbtCP+f/GBkfxVVmQzwR
         jHhLdEsy7Jl7Iq5J/5zhG3YYmrD34PT6kBJmxIA/2XvnXGmE6uCV4DuolIGYu9zfiJwr
         jEN7vrOe0pFNQdylc27ZM9//r/wyEqOve5RG2lyF/c9JJFHILmOGxzoY2q28eV+fVFy6
         5yNkZlBSxN52VMtN7Dqqsnrbc7mHTyRUgiuDd28Uc5Q+GXkkXXfUG+DTv8t4VcTDM7ow
         4bLw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:autocrypt
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=71tkC+tws+NsCq9kjabp1PjbihlA9KDcEibM9EY34Cc=;
        b=gF1/M63hYUCV/ESTz558dlAVKk6C99mxhKYUoe6pPVHY2KWSK14f46YQMeY0L/8wNp
         gZwOsHWXareHNEp7oW4O58nFwva0gp337qfWoIjxLdV3J7bnD7d5qCdzvgQR4BrhdMet
         GMDDiyFlRWNJRIrlqlLi1oH/4BnKjVgmbC+wPAr+uWzpHqfdLwkCI2KP7UcBa6eWxjAW
         Ba5efad6FFZhLrdCCNciSFgwluAG7gxnWC37T9eDvCPrJ+zBmTRwUgTgdIuSUIfwLFqk
         4ozWtxL2QXi40+xzQiPQR3U6q/rWKe08aayqgjIeL9UjMBaN1ZnO5mEdEmaEmwC0nB2g
         vucw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71tkC+tws+NsCq9kjabp1PjbihlA9KDcEibM9EY34Cc=;
        b=luHH7ezr3LvkALcpXl3jmfxPWNV/np1c9HuKP7z/vjoli5NRCdzvKHCNbrGdGw9ZdN
         GY5CeGE7nUXhuEU7YksTlXGYBkWoGopmCqGJcQpm0TEup7ZmPAcK08Tx1e+KdSeRSRW1
         OPAGxFJL/x93js/xUX28xVHIn7vyTOv12k5rlrtnDLpnRQ/pNIGyGm99a7oi6aFsI14z
         h9qJU3bwPndlg59NJ4O1IcQ60lZXDgbRTHByDD+i8lxGf5KkW5c34a8yvpLQv1140Z2x
         dwqffxaweCaerkFZN1yO+4Mzuvxee6CHP9I+0/A6gy9PcfonzGuZBDTSLv1MP7IWbaYq
         aP0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:in-reply-to:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=71tkC+tws+NsCq9kjabp1PjbihlA9KDcEibM9EY34Cc=;
        b=XZ4Shh+7LDlAHTBInc+R0Lav3iTdT4BWOxRjAIE0nrduqACPbM5OvXV1rsvc0baRhk
         313B0qsF0DA0s4/dIM/QsnpZc1m6bhBP2i0luL/DkE3Sl3hv/aj+z9xRrQxNKmebS++8
         JA1LHqrgstgZwTJqgkM3E9MnkwB/JzAp840YERin2xjsSU0+cSAJ7Lw5kf5TWNgTzo4Y
         PVoqOKzE+OfDn7bK3F/1wDEHC6HBLhHwilUUmrL9M4ohiXRD3B0SdzxdR32Oadd3JR9d
         p1OOtxMoIpf8tAuYNgeDehn+h3QTwKkIAzN/u0e50MgLuYhzf5A4ieCc1pMa+ISEfn4R
         XLtA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5306oXUtPqWjYoBF2nypNhs6qPixHj28qqhdHaWVHTS4zr0ZkB2T
	1RCpti6hkBDwfVih9hv1dgs=
X-Google-Smtp-Source: ABdhPJwL5NHfJVzoj6m0s7MpXPTKKySUfo1RXDo0hjFP/2DWNVCm6txgJf69WfE8nPJOD0qiMgnCwg==
X-Received: by 2002:a7b:cc8b:: with SMTP id p11mr40762878wma.180.1593800931370;
        Fri, 03 Jul 2020 11:28:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls2191386wru.0.gmail; Fri, 03 Jul
 2020 11:28:50 -0700 (PDT)
X-Received: by 2002:adf:ed47:: with SMTP id u7mr40880683wro.201.1593800930888;
        Fri, 03 Jul 2020 11:28:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593800930; cv=pass;
        d=google.com; s=arc-20160816;
        b=wjHBYXzvjQae9GGqHQdmI5ebml7gcxQNbFw5EJ5nA4epUcainbyTAYmoTpwFRC86Nm
         9XkXamA5YBRUcm8eXX/Gg3lr+ZJ6g42e1nIKQT9g6/gMIHxBywWQ7O47pU8pKXB5CIg6
         08zKAseHATuxQr2Uc/3ADVBoYN7FINqCQwNH76YgyTWw7kTRPieOqVjwMVE0RTJKCjKJ
         QukysxxQKaQciStszHjIoggU85+AQcLDgZnf/8OrAMu+mXyXMJRYMWZs8iCryCK/DVFa
         2/RrPeZjFYGUKURfJofHgWdZ43WjwZJ+yXRdmH/54TSBAR7wEkyHJd5RQ5QAefC7DKZr
         VcPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=rMNz+p2C4XMsM8cRxvRgdX6AqzD5+JdQNRGHWtdsr4k=;
        b=MjZiHtKvgAbC4dOrTLJRblDU/Sz7azhKumMPCv47yDVfBS1Ik5zLKB/fEpXjQrqlhy
         qWTyg6jrASM/PIhw8R5ujTiAd2JHIsrt+COoDfxO/DzN/WCYJKh2QDHPjvUCpTtpHxXN
         NIaPEg78dD+hZiBcZlz4RMfTZNW2pFQRReF2H2yGvMPcywDV3Lx9XBExDPDr0QR9GxG7
         CJLwA+E46EYr/uYCCWZFtnkjb8w2ce/HooHQO/Ux4fkUUDFZJq0kb8VvbiLIS0Mjmwfo
         NowCubi7mG0LGf+AzXGLfpxNyZ8DHWGfKulWk3asf30ACoUkFK4MspbgBoy/+dpi2rhF
         qD+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [51.163.158.102])
        by gmr-mx.google.com with ESMTPS id 14si711400wmk.1.2020.07.03.11.28.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jul 2020 11:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 51.163.158.102 as permitted sender) client-ip=51.163.158.102;
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05lp2168.outbound.protection.outlook.com [104.47.17.168])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-15-mkiDn-AjOlyvu6RqGCRi9w-1; Fri, 03 Jul 2020 20:28:49 +0200
X-MC-Unique: mkiDn-AjOlyvu6RqGCRi9w-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VC9UVESIJ1zXQgIIdesyLGjX2fsQN9xSBv5/DXy+EJwsHU8H7+ckvsKcDF6hmM2/13SYmzwwVjX5GNQiux7wxvmWzzKoOaXgxuUto74fRCmSzG7s7FZyKu3w9oFaIaXAlHdEqcf7UQS0XD2AwkeB4cH9FZWX36aQ3yRg9iipgF8H40wKWeyOCSvwXgXrPsA5/B+E/PwBScAAldXyZ7Zz5Nk6qmLP78ExswWPFv//zlqb+qsLgc6P5yj/dZorF1GiCJHH30rlgQEtFuEoA8TZt6Xvb8QcPXbnRYq5hA/iEptQe3TuOCuGkjL13LcdS1dy23ZAtKQJLfi4VpdliQ337g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rMNz+p2C4XMsM8cRxvRgdX6AqzD5+JdQNRGHWtdsr4k=;
 b=fEvMII0TNi3XC648r5EsLFvBNlA7SP3I4Y2zzBHMwyiaFIkUpjmiLcEeKAZIWFdqmMZLG5O4sqDQDlRtrVCFAkvxh//V7sUI3jmj5KOnzkNq4hcIVjpI3lyIPawGOgAoufO5Iu3ofPlBK8ElzSejWSKyndf61MQuWbTj1zTiDrReBaZGfBnuFde98JGql+C63EC3aeLbSx/dbRtJoyq5Sjzw6QJvXRMAaFu9y/eMNnbQWB0C29cVs7ZSBS9MbJ5zjpno8fup/IPd2DqQLnf7n/WBnx/dsv3qRMl2qDT+Z9QnYUbYFN+A85CmTo6Sf+37qXD5b20X4R8xg4VvEbEYVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AM5PR04MB3091.eurprd04.prod.outlook.com (2603:10a6:206:5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.20; Fri, 3 Jul
 2020 18:28:47 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::b948:ad31:5db0:e954]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::b948:ad31:5db0:e954%6]) with mapi id 15.20.3153.024; Fri, 3 Jul 2020
 18:28:47 +0000
Subject: Re: [PATCH] scsi: iscsi: register sysfs for workqueue iscsi_destroy
To: Bob Liu <bob.liu@oracle.com>, linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, martin.petersen@oracle.com,
 cleech@redhat.com, michael.christie@oracle.com
References: <20200703051603.1473-1-bob.liu@oracle.com>
From: Lee Duncan <lduncan@suse.com>
Autocrypt: addr=lduncan@suse.com; keydata=
 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
 Xd8p+B+giaT8a1b5hWuz85V0
Message-ID: <691c7f84-fb9b-c897-14ad-5c5b6b087b52@suse.com>
Date: Fri, 3 Jul 2020 11:28:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
In-Reply-To: <20200703051603.1473-1-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: AM3PR07CA0118.eurprd07.prod.outlook.com
 (2603:10a6:207:7::28) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.20.3] (73.25.22.216) by AM3PR07CA0118.eurprd07.prod.outlook.com (2603:10a6:207:7::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.14 via Frontend Transport; Fri, 3 Jul 2020 18:28:45 +0000
X-Originating-IP: [73.25.22.216]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 752a1ded-c285-4d6f-5e8e-08d81f7eecd7
X-MS-TrafficTypeDiagnostic: AM5PR04MB3091:
X-Microsoft-Antispam-PRVS: <AM5PR04MB3091119046B1F93E9D3BFB88DA6A0@AM5PR04MB3091.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:972;
X-Forefront-PRVS: 045315E1EE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ETxqcyhVElZbrABaTpPkWlCeKkrxJjy9sZJvGCbIH5AGsfo1UO42robJDRzo5zHqSa9n6+KNBoCfKnsMzJLWuO1VA/iXU8qJM5KgChhbzpXvBomxnn0Yq5EAlPjuUU5WK65kqvJjM5n7Ujq+F14/R8VaZqRqboan5vr8BRc2MRBCWpkL2HxZ/sYgYpB4apdYtN4MygoWlPMqux+UfuQN5rSPzWponNLhkM/pH4oIThWgNiIbT2b0bwKJEIT4G/f7OrnOm+THAOMDMuGztwF751iH7AyQeTwzu6hKKoaw6+tMXW6cF1QHLal+FgG8dPigE/YYRP/5HG4WhxzCKvivQKj0y7q35DRobr13m91XaOJi74LghGM0vfRC6785+rcL
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR04MB3089.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(396003)(136003)(39860400002)(376002)(346002)(2906002)(4326008)(186003)(53546011)(16526019)(52116002)(6666004)(26005)(956004)(2616005)(478600001)(86362001)(31696002)(5660300002)(66556008)(36756003)(83380400001)(66476007)(66946007)(6486002)(8676002)(316002)(16576012)(8936002)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: HJ7sUyzOTsQEJe0tkyB+4lQqfcVwLF2zDYNH8NA8qyrhbh9gwiWLys+J4pI8l7DmXn8YiVzhT858vigy6XUx63z8G8XPsWy4kotkb7vkHIsc2vYRlpP7TyIoEOnP5n4fqlbuHRhxkSsLiT6+JMmenGgB5flYIv4m0RhYqn3AHJ8pU6NV08pabAGlfRea5G1DNdwllv6WuDsZvLPQO5NO+EoEmFaZhulWooyhWK5dpFa8pJCr78YPr1Wn+NwC9KPHYP/4Ml+4EN9MziRpUUWX+II+rnY9RJuMsK8esO2dQMzV1DzgcVC7SHxunoycdJJM4UbrTvUIdwVqwMt5aeUfctW8myhy4K7kRU13oKqGlyrGeSlzkpFTHStG8FyjaQiYoKcUN25jO76N1We2onKXgBjHJN8oO0cJhkcE9sBjGUOkuo8N+4zVv5HVdcoTI+yA9RyeCfhHPgKmuBFhRjOleERi1VvLP88P+mCltDLGx74=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 752a1ded-c285-4d6f-5e8e-08d81f7eecd7
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2020 18:28:47.4422
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EpiYkTudN74Bmc9BB1VDU6I8AnxWvOVXh0xFy/YDZ4ZbAaHmOpyoMYd7Ux5nGZZhGMtc2xQozC7hEyxzhBptJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3091
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 51.163.158.102 as permitted sender) smtp.mailfrom=lduncan@suse.com
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

On 7/2/20 10:16 PM, Bob Liu wrote:
> Register sysfs for workqueue iscsi_destroy, so that users can set cpu affinity
> through "cpumask" for this workqueue to get better isolation in cloud
> multi-tenant scenario.
> 
> This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS and drop
> __WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't allowed to
> change "cpumask".
> 
> Suggested-by: Mike Christie <michael.christie@oracle.com>
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 7ae5024..aa8d4a3 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -4766,7 +4766,9 @@ static __init int iscsi_transport_init(void)
>  		goto release_nls;
>  	}
>  
> -	iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");
> +	iscsi_destroy_workq = alloc_workqueue("%s",
> +			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
> +			1, "iscsi_destroy");
>  	if (!iscsi_destroy_workq) {
>  		err = -ENOMEM;
>  		goto destroy_wq;
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/691c7f84-fb9b-c897-14ad-5c5b6b087b52%40suse.com.
