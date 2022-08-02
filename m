Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBE5AUWLQMGQEEJUCD2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 377F6588031
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Aug 2022 18:25:58 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id ea7-20020ad458a7000000b00476b8d9bfdcsf2949850qvb.18
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Aug 2022 09:25:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1659457557; cv=pass;
        d=google.com; s=arc-20160816;
        b=tw+SMIh60yd4ejgQ+tszRMRNklMeGN+EGCmfwSNHjStukKIItlW8ZNCIAt5O3mqPrz
         vfeW37Qhx24RfULfQPY636vNPGU3h/W6fO1cq4RpiMl+hoF3l3OZuEzi0i15BQ5LAuO5
         HEvztgVnAC6W+gHb0UPheZPEMqPC5dnCmIDCSjB9EGrzOi7ICmzF+IQkdqWOyeABidUO
         xO1ogmChnLXiBZFgUAhXPP3Sad3/xUtxnI8lsB+yHntXyAARHEd+mmyq9c9VOfRPt9ZF
         eS4OYd4V1iIQ6llJIMigHrayqYiz2HVGz+3qjAm5ccPARVgxoClyfqVa3QG+NyWTarEU
         2uyQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=PR0e1lZXErjwgGxc+6Fs9R/bC76KusUknC/H2WKehL0=;
        b=yEmFPsivIeI8MrIge7tpz0YZb/uZWK7ZsxO6I8YnR3A/aai7IV8VRMQsMUJbe06i3g
         IX4iBCLF1tLGaa97yXrKf6l2tzUhsq6VnQliyRLCQPn1df2w50kqg93c7ILzFlWbHpko
         mT/0cZ9ybDJULm7zB36a+C36YLTgDdK2DAC22NyQvKdKRwQfArNZ/jSLlimL3CIUkqMP
         GEUfXVTSht37dDNF3zv4ZjDpXQ5XJumf3WCnXVl5L1GXR200bQfGoCSfntOU1sqlQEc2
         KDYPF3oQhtMClaMHklp3TZMC3hIkYaVlqNMeQjABNR04Br/AhOgyOrNVgWwhRi8XphFZ
         gC+g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=EcQ62QFG;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=swKF+Wxd;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:from:to:cc;
        bh=PR0e1lZXErjwgGxc+6Fs9R/bC76KusUknC/H2WKehL0=;
        b=SfpaAz934VR6PCGBXqm73SXeobw2JyywAHm1NxF5RFPcolm/Y5Bhrne108TnN/+oU3
         ju1OFa0tU3Yw7IkpGspbCX1lC5UkkEtxcSPknFck7+haI12++PxtdX4+zkz/4x+8vjDX
         XKtOnXnQULgGNIXwngAgrlQ/VLaBhcogoWViSIRPcmdcB/iA38iy4E0cwhXfwP3qNif+
         HtIBq4khEDGAye5GQPvBbfrtdJADNekg+G4nrAngpd3HZsuJ+zd0Y4iIuTUL85bJmhEW
         A5otF49IFdxxDXid3ILi2VOfe7VOWhDyYE8fGvPoFinkmeCCwDheDp/rpET9GIuXHCiS
         5lSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc;
        bh=PR0e1lZXErjwgGxc+6Fs9R/bC76KusUknC/H2WKehL0=;
        b=M/clmkgxSycL3lQBN5DOeqPs0zLewi7WDE4cckM4IcLPppspxJiegku85mykGKordM
         9hOG34XKhIlIvuCtcci0qTzZHUckvA1ke1p5ue0B77nr4oXy68iACF581xJtAJBK9wtQ
         z4JoWNxQvGI/OdGFd79i1suKtI5SOxrjUAbS9AhGp0vOWlbTjfJKwCc9jrTOW/qYdJMI
         VP7O9rJVKyErjRTKbtSABH91r3P9F09N8xjiQ/tR3NQWpm87Y9WTOOZUVPkHr0tCFMer
         jwI589cyXCmx+ApqOTfDY7fo/JhMFS98KMQ/FVSjpZHnrHT/5IPR2OYuF0xLsC04t3fe
         LkzQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora9mcqYE/5TCaE1clalg4MtC9GJL9LJqbr+cRtn7XsP4QKIXO/xb
	dSjQQCl4r34UT+O/et7w/FM=
X-Google-Smtp-Source: AGRyM1to37VkO4HxvzbDJ4yfYzhUGyrUWyZZTuI1nDVqUh7ceYOqC+ClOglkZeu6nWxcWoPgSs3NXw==
X-Received: by 2002:a05:620a:454a:b0:6b6:dae:4d6e with SMTP id u10-20020a05620a454a00b006b60dae4d6emr15606098qkp.281.1659457556972;
        Tue, 02 Aug 2022 09:25:56 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:e4cc:0:b0:474:6ee1:8832 with SMTP id g12-20020a0ce4cc000000b004746ee18832ls7645790qvm.9.-pod-prod-gmail;
 Tue, 02 Aug 2022 09:25:55 -0700 (PDT)
X-Received: by 2002:a05:6214:268c:b0:474:8351:5803 with SMTP id gm12-20020a056214268c00b0047483515803mr19617588qvb.23.1659457555530;
        Tue, 02 Aug 2022 09:25:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659457555; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJAwZD3lbsn9OfM/0BvEN7qfwm9ClW1OOBEg5FWB+ctqK74ZgespSvb+r5sqgbYcKA
         H9z3lnpRM8gfp1MNZK32VhuncRepOqDZvMIY0yakuvZrXrl3wpo7a5te5Yey8TeLZEnY
         Npc9GIAeKGSmrLJGAbeBtEvVvzA49H0IJa7KGP0cVKH+DWXUT8L6UPGxEKheNjX2Y+qb
         EMTooehnQgZeAmO8ew3J6zSMT1DbP3fL7klC2tI9eqSWAI15hxffhXXUrF7bgARS9d1r
         3Ci4rv9ACldq5LCnD3wW0nlz4MrgywA/0eMxnFUquKanDCZ2EC4OyZDjXYu8qqrMZqUA
         GoiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=oelgTqjd/BxyK3FcuozPPxr20MiTvT7CR1km4YBjtzw=;
        b=Itzbi1eeDLcYNllJj+hAKF5hRpmJaDV9NrG+K6VEr05keUZZsBXn+vuziF63g4kfOO
         440oX/o4tH6o2TZ58z29jFd8BuKR4KjXL5DGt4tBG+ZYHUGHcyxm0DnqwtjJkzKFwt5n
         x9XLfLbhIUcrxFGQt7Zl1PpUqe75p/IOP5jLou498oeKwll43LZohKqEHRsTXAl1hGXm
         BQ3uDzseQODkdCoUVwv4xn8oXoDc82INewko84hpe3RsNKfgPFY/+8i+ZLHkgq6bmcpw
         zWOGmiiaJoHT0PkUA+wFP2xoeSMWL1HkHjEhFzv03u8cKVIIulTngG+01kHcXyvyDXfG
         VTGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=EcQ62QFG;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=swKF+Wxd;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id v11-20020ae9e30b000000b006b5e6d01ba4si420991qkf.4.2022.08.02.09.25.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Aug 2022 09:25:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 272GNoYX017445;
	Tue, 2 Aug 2022 16:25:55 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3hmv8s7d7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 02 Aug 2022 16:25:54 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 272G7qvO001154;
	Tue, 2 Aug 2022 16:25:53 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3hp57rbqtj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 02 Aug 2022 16:25:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFahCKTYZG+yGnl61hAhOS4gLttXFCjqE0BlUJoscy1ecOu+LE7a/cEc6iRLHLw7G6it0hfBQZz1g5EaizVsLphtUkVhCkn7i0Wn+HCwhp/LIO/ZPwbSGXDgou5T/DaJB527hahulFgcn/imU73UBP6Ro1rkx104BpNG4s0yNEKecX++p7ciqiijVUv5ER1c0psb2kaGT5idkkjLPGhfiYzlEx4CYLwtNQ59hegIYliSHJme5xi15VfMw2k+01pliJCHVjqYMshHNYcXWV+FAFy3hmJVjVtqaLgH/8sAdOJkGX+UuwaPdmGb+2qwQ1kJT6SQ3uw85cZiE9F5w/4LDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oelgTqjd/BxyK3FcuozPPxr20MiTvT7CR1km4YBjtzw=;
 b=kiEAf8bfP264it4JsmFwNYdLXEE22Qu6QWXDbWxOFUivupVsJx6EInYgJ1b/MTNHtlyHJ3YhImpvClRjd6TEebdK7TncRY432Mi68KOGGCuBvmINYSi2vPZk3+Ha1Tas/IuKyTHJKoDbAmGcC/Zi1pXFAmYSjzmJWqU63H+BvwoxItMifiDB4Wsl3mmxhHtFZSaMbk8FgwL6vvg05I0JwrYykGwvqHlZSkaZRtjSmoN3N8PWi1rFo1MRIZHc35+aSzdircDB6Jd83dOM1OzAEJH4Q9WSfrkmfARrocCHllEPBMQAmbeNSWRvP7bQ8XoEYnvCobQFLD5/qfPCghN14g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB5225.namprd10.prod.outlook.com (2603:10b6:610:c5::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Tue, 2 Aug 2022 16:25:51 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50%6]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 16:25:51 +0000
Message-ID: <f52cc786-be48-d670-6212-5ae6117d314d@oracle.com>
Date: Tue, 2 Aug 2022 11:25:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
To: "lijinlin (A)" <lijinlin3@huawei.com>,
        "lduncan@suse.com"
 <lduncan@suse.com>,
        "cleech@redhat.com" <cleech@redhat.com>,
        "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
        "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
        "mark.mielke@gmail.com" <mark.mielke@gmail.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linfeilong <linfeilong@huawei.com>,
        "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
 <d8afc88468ab481eb325e842ad384e0e@huawei.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <d8afc88468ab481eb325e842ad384e0e@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR11CA0012.namprd11.prod.outlook.com
 (2603:10b6:610:54::22) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a8027de-69b3-4db7-e6d4-08da74a3aa31
X-MS-TrafficTypeDiagnostic: CH0PR10MB5225:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: di+xq42dhQUEI+lp8lVRrV1jzgeLDrhvqC5Bwf+YPZMtEpxN0BOECE+oUzdxE6F2DSY0Rl87oNPJ4b6PU6qWHs2kXcXI8I4DoZIeH1sK3xvPH0Wo4vI1e7rycWUZq8e3SRGRv4bNCW1FFickYJ6eOCkZxMlkv6sMQij/wEQQTFDHTLe1Ap3rqJ/tKB9r8NwwkPFf4Cl5iimVFcbtd0YGzNhaQOdpPJaV78b2MgSTVizS9vAUXrZLXMOqIucEsvjokKcRhhGjoy/MMXDUvSLbso10raiFKn+LTwx/A3YeAD3J0RIswXobMQeVXXi/X6dbHe7HRnaMzAl91UpJf0f3HCztoavaXd7AA56pQTR5cqQ7VjynK9Ohh4t/WKBbPozWS4/tvKIWX8Tuj6nRN3wssmqjr8T1/RSXjc11OvCdeiKAxvLnkV/UmVJsKfeKi0Qo+KLXemOgKjbVEBQnETJoX2vHpJglc5tK57L8DNwbASd/KlBtgp4tDw4w+HlClr+FeRJHKDZK8MOHNKJMd5o+8kG8tt1j6thCa8gPbTnUUZp3B7TPd6o4Uid3y6aU9DT8N69hI8yGc5u+Nk4NFSbTadDidf/vw5Y4VQkskYY5+I6KbqSJno61was14unujw+3fqStsqXnULQZs5NILFu2ScFAU+KlWl7NKicZvEjiiW4ELdtPCBIGHO2R+SYJ9wMRZQLR4rps+BO+Ft9r+1bChR42OodcOyupy0gOkxQ5PTQg5yHWR8D2zIwvxyMvi/edf+OFHyoSDX1PxFVSQC/nLALLmCyzI1qdJNQswQb8EmP9PY5Bb8Thib9xZEHuFff4
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(396003)(376002)(346002)(39860400002)(136003)(6486002)(478600001)(6666004)(6506007)(41300700001)(316002)(110136005)(54906003)(31696002)(86362001)(83380400001)(38100700002)(2616005)(53546011)(26005)(6512007)(186003)(36756003)(2906002)(31686004)(5660300002)(66556008)(66476007)(8936002)(66946007)(7416002)(4326008)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVAyWjJpQ0lraWhlRlphSDFNUXBPdTZhSlZmMW5vQXpJVkVDYWhGRXJIeTJn?=
 =?utf-8?B?M1FrVml1WTJnWVB4VVJab0dtSDh4VUNoTUlQS0tqK2tVSG1XeGFJRTNiT3BQ?=
 =?utf-8?B?aW5XYlpIdDN0WWxWeFhmczFyRFc2UlNPbVcwNWo5NlhFTnBWbCtEMTVMZkdi?=
 =?utf-8?B?RXdvbnAraHBzY3JlODg2QVhqWkZhRENzL0IxSnBQU3o3c1lUSFM3empYWnpu?=
 =?utf-8?B?NVhNNkxDdmNQckRWNlhYaXRmeE5BRDg5aFpRN1BQVFJ2SWdJMDhaMjh5Y3kx?=
 =?utf-8?B?RmEyb2lzYmU1Mm82aTFBdzZUMHhTVVV1VFVUNnJyaXpDdUZzTjBFWkhsaWNp?=
 =?utf-8?B?aElwODBwNTY4NlNHMjdiUFBhUUdDeHVMRlNoSWEyVk9HcHJSNUt6MktYNGxN?=
 =?utf-8?B?YkdzMEZzYVloU2NDMW1iRVl1TmhVOGF6R2FUalR4R2NxUGZNdWdRS3dsVkZl?=
 =?utf-8?B?aGdFVXpad3JDbVRYVFBIeTQxa2c1b2VlYnpYSkdJU0dTc3hOVXVMQzByUkFW?=
 =?utf-8?B?NVo5cXA3OGUyb1VCQko5amgrcDRBQmdYWnE3Z2REMXo3RjRUbGYzQm5XQzA2?=
 =?utf-8?B?VCs2QzQzUDVHTTNXdmNUSU1PcEhnNy9IOHd6VHVwcGo3aE1aSWdya2ZCaklL?=
 =?utf-8?B?MW5kTUt4N2lYTDFpZFNXL3B0bm9UVHBNSVUyVHhDZ2hKb2gxZSs5Q2dGcG90?=
 =?utf-8?B?NUlFVEdaTWdhVHJoRElDZkNOOVl0V0ova3hOSHNxSkxIbG5iOW5nSmVaa2to?=
 =?utf-8?B?d2doNHIrZXk0UnRUazRhcGVJVXBWL0lXMmR4L2JiWjFpS0phSHkrVmcwNGQ4?=
 =?utf-8?B?T0toZzZxbTVRc1BTZWZ6S29tRWFYY2RLa1JRZXBhVld1SGlaNjQxb3ozQWVi?=
 =?utf-8?B?R21nMklIMUVFanVYMHJKaHhSMFlwZ0NwNVR5Z1dLOVZ6cEM1c0I3eGo4NUdi?=
 =?utf-8?B?WjlDTkMvU1lYVmpUaU1MZkNpQTNDTlFpMHdBT252Q0Z1cHdYeU1tQTdqelI0?=
 =?utf-8?B?aWhENW1mVG9GUWVzZTRpR2xZalhmWW0rd2wxWkxJMFlWaUtoWmJEdUpVQVor?=
 =?utf-8?B?QzJUQ1dyYnpYMXYvbURjemdPNlgyVUdseWxyTmVhMUhHeVR5Y0VBVDBNRmpk?=
 =?utf-8?B?ZExpdHhSZUxFbkZySk1jYTNtVmZ6azRyRlg0SFVrWTFrRVVTeFpsRVZFV1RI?=
 =?utf-8?B?a283Q3NwZ0RyMVZNZXN3YlFzMnlzS3BMVnUrM0dwbnFMZ2lTRHIwNllkbGZj?=
 =?utf-8?B?SStoRTVDcFdTU3c5TEZveFgwc0lEd0hRemJ3WEU0S2FVcEFVaW5VRnVUM2JC?=
 =?utf-8?B?a0gvQTBNVk5JYWVFOTlCM1BNcGhqeFlXT1E0OUdVdkZYcTBoRXE4M1Bxa0Zm?=
 =?utf-8?B?dm5QMzlUSjdRZDM1MERlS1lyR09neXQ5ekNpOTdnOFNURmxLZE1FeDlyNGI1?=
 =?utf-8?B?SWRVU251SGxiVThKRXVnSm5tWFdjRjUvS1NQR3Z6NVRYMzFpYVIzS0t3YXEr?=
 =?utf-8?B?TENMS2ZjNWJsMzF0eWhLemlQWGxRT3ovWC9qK2RsNlpDUWxER3pnNWg4WG1V?=
 =?utf-8?B?ejZZVlZNbDVVcFhSYVZJU3BrZmc0SDlVMW1pYW44TmZGOTZVZjJkL3BIdWU1?=
 =?utf-8?B?TS8rTDlIV3BaZ1pJL2J2c2FXSXkralZjTG5OYmd3OVJISWF0ZkRzWlhZcmJy?=
 =?utf-8?B?Yk9jekJDVi9maFlCTmw2eEpzYlJldW5iZUx3NHBCUG5qSlRIcTcyUlliTElV?=
 =?utf-8?B?bnhURTVmUy9TYWZJSjFETE1NTmlvWmEzZDZsc1IwNmRIUSs0a25NMkNmb0d4?=
 =?utf-8?B?UGhramtqVHY4L2tBVE1uTFkvTHdyVUNKUjZEdFpsNzlPdDhZK1JMSG9yZGlY?=
 =?utf-8?B?N21odFEzODRvRU93SmJwa3ppcURwenh0S3lUS3R3YXRQUVJxaUFsbFkwa0oz?=
 =?utf-8?B?RThQYTMvQnBTYTVCZnRMUk16ZTZPWWx3WU8yN2FPclk4bitRTnNRaGRiVGhi?=
 =?utf-8?B?Y1hFUmtnNUwrUXFRZWtKSEFPWXVJSXhqM3lWMXlPQVFackFFQ21JK1ZyRGl5?=
 =?utf-8?B?Tmo0UXFLSTE4eTFRMHNYb3FTbU9kczNVbHl0eStaZUpXOWhOQVFiWGNrMXdZ?=
 =?utf-8?B?eFg1dC9zZ1RhY0tkTVlSYnJ5L1N2ekpBZTdjbldFU1ExaDlIMFRSR2thOEwx?=
 =?utf-8?B?OFE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a8027de-69b3-4db7-e6d4-08da74a3aa31
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 16:25:51.3203
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XKV0YD72j7UnKmiYr3Nj/+hzKu9HLjraboXXZsMp+OdCnqN60UxnO5eUl0HuFlbTLjrOT5LqoOB82Iot7XZkwTQBlQHDD0jtqyZfmvNSwnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5225
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-02_11,2022-08-02_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2208020077
X-Proofpoint-GUID: HvxXE6hrP2o0T_UEWzCY_p9CFBl3tNXf
X-Proofpoint-ORIG-GUID: HvxXE6hrP2o0T_UEWzCY_p9CFBl3tNXf
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=EcQ62QFG;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=swKF+Wxd;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 8/2/22 6:23 AM, lijinlin (A) wrote:
> So sorry, this patch has problem, please ignore.
> 

Was the issue the fget use?

I know I gave the suggestion to do the get, but seeing it now makes
me think I was wrong and it's getting too messy.

Let's just add a mutex for getting/setting the tcp_sw_conn->sock in
the non-io paths (io paths are flushed/locked already). Something like
this (patch is only compile tested):

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9fee70d6434a..c1696472965e 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -558,6 +558,8 @@ iscsi_sw_tcp_conn_create(struct iscsi_cls_session *cls_session,
 	tcp_conn = conn->dd_data;
 	tcp_sw_conn = tcp_conn->dd_data;
 
+	mutex_init(&tcp_sw_conn->sock_lock);
+
 	tfm = crypto_alloc_ahash("crc32c", 0, CRYPTO_ALG_ASYNC);
 	if (IS_ERR(tfm))
 		goto free_conn;
@@ -592,11 +594,15 @@ iscsi_sw_tcp_conn_create(struct iscsi_cls_session *cls_session,
 
 static void iscsi_sw_tcp_release_conn(struct iscsi_conn *conn)
 {
-	struct iscsi_session *session = conn->session;
 	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 	struct socket *sock = tcp_sw_conn->sock;
 
+	/*
+	 * The iscsi transport class will make sure we are not called in
+	 * parallel with start, stop, bind and destroys. However, this can be
+	 * called twice if userspace does a stop then a destroy.
+	 */
 	if (!sock)
 		return;
 
@@ -610,9 +616,9 @@ static void iscsi_sw_tcp_release_conn(struct iscsi_conn *conn)
 	iscsi_sw_tcp_conn_restore_callbacks(conn);
 	sock_put(sock->sk);
 
-	spin_lock_bh(&session->frwd_lock);
+	mutex_lock(&tcp_sw_conn->sock_lock);
 	tcp_sw_conn->sock = NULL;
-	spin_unlock_bh(&session->frwd_lock);
+	mutex_unlock(&tcp_sw_conn->sock_lock);
 	sockfd_put(sock);
 }
 
@@ -664,7 +670,6 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
 		       struct iscsi_cls_conn *cls_conn, uint64_t transport_eph,
 		       int is_leading)
 {
-	struct iscsi_session *session = cls_session->dd_data;
 	struct iscsi_conn *conn = cls_conn->dd_data;
 	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
@@ -684,10 +689,10 @@ iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
 	if (err)
 		goto free_socket;
 
-	spin_lock_bh(&session->frwd_lock);
+	mutex_lock(&tcp_sw_conn->sock_lock);
 	/* bind iSCSI connection and socket */
 	tcp_sw_conn->sock = sock;
-	spin_unlock_bh(&session->frwd_lock);
+	mutex_unlock(&tcp_sw_conn->sock_lock);
 
 	/* setup Socket parameters */
 	sk = sock->sk;
@@ -724,8 +729,15 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
 		break;
 	case ISCSI_PARAM_DATADGST_EN:
 		iscsi_set_param(cls_conn, param, buf, buflen);
+
+		mutex_lock(&tcp_sw_conn->sock_lock);
+		if (!tcp_sw_conn->sock) {
+			mutex_unlock(&tcp_sw_conn->sock_lock);
+			return -ENOTCONN;
+		}
 		tcp_sw_conn->sendpage = conn->datadgst_en ?
 			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
+		mutex_unlock(&tcp_sw_conn->sock_lock);
 		break;
 	case ISCSI_PARAM_MAX_R2T:
 		return iscsi_tcp_set_max_r2t(conn, buf);
@@ -750,14 +762,20 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 	case ISCSI_PARAM_CONN_PORT:
 	case ISCSI_PARAM_CONN_ADDRESS:
 	case ISCSI_PARAM_LOCAL_PORT:
-		spin_lock_bh(&conn->session->frwd_lock);
-		if (!tcp_sw_conn || !tcp_sw_conn->sock) {
-			spin_unlock_bh(&conn->session->frwd_lock);
+		/*
+		 * The conn's sysfs interface is exposed to userspace after
+		 * the tcp_sw_conn is setup, and the netlink interface will
+		 * make sure we don't do a get_param while setup is running.
+		 * We do need to make sure a user is not accessing sysfs while
+		 * the netlink interface is releasing the sock via
+		 * iscsi_sw_tcp_release_conn.
+		 */
+		mutex_lock(&tcp_sw_conn->sock_lock);
+		sock = tcp_sw_conn->sock;
+		if (!sock) {
+			mutex_unlock(&tcp_sw_conn->sock_lock);
 			return -ENOTCONN;
 		}
-		sock = tcp_sw_conn->sock;
-		sock_hold(sock->sk);
-		spin_unlock_bh(&conn->session->frwd_lock);
 
 		if (param == ISCSI_PARAM_LOCAL_PORT)
 			rc = kernel_getsockname(sock,
@@ -765,7 +783,7 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 		else
 			rc = kernel_getpeername(sock,
 						(struct sockaddr *)&addr);
-		sock_put(sock->sk);
+		mutex_unlock(&tcp_sw_conn->sock_lock);
 		if (rc < 0)
 			return rc;
 
@@ -803,17 +821,25 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 		}
 		tcp_conn = conn->dd_data;
 		tcp_sw_conn = tcp_conn->dd_data;
+		/*
+		 * If the leadconn is bound then setup has completed and destroy
+		 * has not been run yet. Grab a ref to the conn incase a destroy
+		 * starts to run after we drop the fwrd_lock.
+		 */
+		iscsi_get_conn(conn->cls_conn);
+		spin_unlock_bh(&session->frwd_lock);
+
+		mutex_lock(&tcp_sw_conn->sock_lock);
 		sock = tcp_sw_conn->sock;
 		if (!sock) {
-			spin_unlock_bh(&session->frwd_lock);
+			mutex_unlock(&tcp_sw_conn->sock_lock);
+			iscsi_put_conn(conn->cls_conn);
 			return -ENOTCONN;
 		}
-		sock_hold(sock->sk);
-		spin_unlock_bh(&session->frwd_lock);
-
-		rc = kernel_getsockname(sock,
-					(struct sockaddr *)&addr);
-		sock_put(sock->sk);
+	
+		rc = kernel_getsockname(sock, (struct sockaddr *)&addr);
+		mutex_unlock(&tcp_sw_conn->sock_lock);
+		iscsi_put_conn(conn->cls_conn);
 		if (rc < 0)
 			return rc;
 
diff --git a/drivers/scsi/iscsi_tcp.h b/drivers/scsi/iscsi_tcp.h
index 791453195099..7c6f90ce6124 100644
--- a/drivers/scsi/iscsi_tcp.h
+++ b/drivers/scsi/iscsi_tcp.h
@@ -28,6 +28,8 @@ struct iscsi_sw_tcp_send {
 
 struct iscsi_sw_tcp_conn {
 	struct socket		*sock;
+	/* Taken when accesing the sock from the netlink/sysfs interface */
+	struct mutex		sock_lock;
 
 	struct iscsi_sw_tcp_send out;
 	/* old values for socket callbacks */

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f52cc786-be48-d670-6212-5ae6117d314d%40oracle.com.
