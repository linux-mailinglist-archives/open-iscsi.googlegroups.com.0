Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBLEQ72OAMGQEUB2MXEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x1138.google.com (mail-yw1-x1138.google.com [IPv6:2607:f8b0:4864:20::1138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F156504D1
	for <lists+open-iscsi@lfdr.de>; Sun, 18 Dec 2022 22:37:50 +0100 (CET)
Received: by mail-yw1-x1138.google.com with SMTP id 00721157ae682-348608c1cd3sf91412447b3.10
        for <lists+open-iscsi@lfdr.de>; Sun, 18 Dec 2022 13:37:50 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1671399469; cv=pass;
        d=google.com; s=arc-20160816;
        b=zqNcsBSabbiF8eCQIiKyKzb4Q/2tcxK9/VRsGPwT3XPTbh/aYd3e629CPeg5zRwB+x
         OF5oS3bFSKYUXmNXdagE9LkKj9cwGnTWwxxxvDKFNg62WZ3Be4Z6lIkG2xbY4YYUvHAw
         zSMqE9xB8J2yNEKmeaTWwWOYG2hAslVZecy/dQF5zyhUuBqSyq0rbNMU7I+TbW0bUMoG
         pzJKEHaX+NSsy1qL+9udgmwzfi3vFlIsYd3t9mrKbsictAkAauLqp/JCiYo50UQoyZWy
         Hod+zxgwmmHLsvNHQFTmD8sd0Yrz5dDBl/JMnsijR8GPHTc1Mo/7Du0/pmP+pvxpCY+p
         mZkg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=MR+C6FBzTK0VkEHRQsePkAgI4J5V0rT0Jkry/Zdt+NI=;
        b=CQsQ3VVo4dJpw8FTyj4BHc4DRKom7GTudPuvIVBfisYf8kKFHs9GT7Z0u+jdE1IDj0
         0kwp02in949QoqxUVMmcU2Nf8386fwF+u9qgICTy6ONgp/bJvD616+njZYtH0SfVfj+a
         5wgkovuHUQ359/n7qdgRa+I5donbHudeeQqJ/bAiNIqEAznRDsbvoMTrCAmpcKFORU8C
         7ct5N1oEQL08BgRs+nzcL6hWzIKNMyHaXLo2x9Dx5EjSJLZc9mJWq4aEE6qQtHDGHNmn
         9E5QeUlhrLIC07/5YWMNgzd8jjFQCFmfYgCjPL1E+FA+DkjbnNtdkxP6KltjR9vg1TUa
         9VOg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=k60NMJFd;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=RsKszpV1;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MR+C6FBzTK0VkEHRQsePkAgI4J5V0rT0Jkry/Zdt+NI=;
        b=KakREk2Ikp5k0t7l3gXHPaXkRf7vDhvIJ44rijcqJ6xz9jKV8bWo6ld4IItT+7NSFT
         3PtZKrBOQcdPmcKdBxkVHDoTGXERWa39FF7/L2yRagVaMWkOS6aEZqs9uPX4RrkhOwft
         FbbWVHFBXL0WfmXQvjssdnz/p/7lBmLCioP24DYzNIe1o37JXYzABUiFXvNh1OB/gO7I
         AoDA9YK5ousIXSGvWKTtfL4UCHiI8pkj/ROr8Xyx3QDyJHpyPC6tr+INMHAfizZhQan1
         3MiKvKkT4LQVd9M7Dd1BQ4Y0cZyEnqzje5jbHh1Cz1rEzB6elzG+htL27frAZnhr8BeR
         sqbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MR+C6FBzTK0VkEHRQsePkAgI4J5V0rT0Jkry/Zdt+NI=;
        b=TLA3jHVXgsU3aE1t+oE3DC77f98AnASejZ+vD6EIJ351Ro689hPxQ1b/wXN35UxlX2
         I6D8csDZAAYeN6XSHjLuSSM9uic7wXhAFFawpL6P/WjoupDEjocIuszE7bsmVizHXr2M
         3rkjC0qkrTcT2uUTwkqE0RHXwSlIrUccPiwJzuVAlU4XoTfDlPJIR63MulVyfv9QRY3i
         hADOuq0+baZrQFZXdvslBdfJhTyxTsNqYM3gNtaLMICY/38bC6X6ndhToZg3p6XibUjb
         VLdDsnkSdK5TaDu1g3QNVcgN9TXbZ71i0mSnskZ7eIdKPCcYsx+IKwqk5cT92peXqLOn
         nNug==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plBSEF3LrW98eJ+rcvyeRt7LwfAn3/T7RK3meFTiezegf2GoP0r
	ydfhi+d2fYdQTHJc72SB7fw=
X-Google-Smtp-Source: AA0mqf5yeVtWuzMDls7kb+0QsFLYlEs6//AaYOPGvMdDhpVpNlswn6RNMGPtbS/xUxCY4pqI5jpz5g==
X-Received: by 2002:a25:3d43:0:b0:706:ba81:7470 with SMTP id k64-20020a253d43000000b00706ba817470mr12915870yba.253.1671399469455;
        Sun, 18 Dec 2022 13:37:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:2986:0:b0:6e6:bc72:d6d2 with SMTP id p128-20020a252986000000b006e6bc72d6d2ls4467410ybp.0.-pod-prod-gmail;
 Sun, 18 Dec 2022 13:37:47 -0800 (PST)
X-Received: by 2002:a25:bcc3:0:b0:6f3:6552:6f7e with SMTP id l3-20020a25bcc3000000b006f365526f7emr5577114ybm.56.1671399467595;
        Sun, 18 Dec 2022 13:37:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671399467; cv=pass;
        d=google.com; s=arc-20160816;
        b=eJOYY+RVjb2HXRt1y6WKgimHohufrh8kprvfvCf70APDJg4oWwZCUwQf4zZRSBIyNm
         GifS2tEt76/Y7ZC04/v2KmXxzHI4w9ic5v/wSglt+9b+xPE6wghG6GeO8Ru3uT3LxkDw
         TLUXPxKcXKhlNTMGlyT73yoXied97I5n+eAllWOd/TdK3f68fIS0xKiHgMey62KGKIq6
         SocOx2KGV0gHgOanrSjxRuIsSC8LMc7qFcHCOItsfu6Y8Q8NOPn0TKOF+wehxAol4SST
         z0TxO09yXI/cwrDk9u3vA1/jXkAAYQ4NhmFlICjPKg4HZ1Q3hKbteavrZ2v8eWoN/XWe
         IB1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=YNnDIbBo4AmbULKutUwqN9zkvUzfEfxXiAOsvFbYLL8=;
        b=vtZWkn/3HBoOTyT7sxcxzqLmXGSKUnLhovoM122I8ArLVW0919JIJpXrmwWeTG+yUO
         9O0y3HZXlA8AXcrPMpYFJDLF3uboS9EIeZ+P21Usn7P2bLOx0dOPea228hhTtvUE9SHV
         BB4hbIyRcWI6fJKD6s+dRdYYJZgoKCe9kRgfmWUmiOS6Fnxq8488WQcVCzxiWjkh3u6l
         YNeXOFYKJ+OVmMntiot8zdS4gxE35JJSfVVvoO7eg9wdNa8Tm+uEYqoEuET6HE4fNUwb
         JNsBG8ZTMkqNt/16MRx0o0EjqVv6cAUR63DyWdUaQLRETGrLOWG3Sqc+P1r49BWApACJ
         ZlPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=k60NMJFd;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=RsKszpV1;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id u2-20020a25b7c2000000b006f06d30ef91si643050ybj.1.2022.12.18.13.37.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Dec 2022 13:37:47 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BIK5wAH015422;
	Sun, 18 Dec 2022 21:37:46 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3mh6tp1qbd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 18 Dec 2022 21:37:46 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2BIKa8IV006906;
	Sun, 18 Dec 2022 21:37:45 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3mh4791hk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 18 Dec 2022 21:37:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHkfldZvwSQA8fkEzXM6GtEUZHiFP/NpN011n/+w+vPfz/1XcCqxuUGHli1Eha5baPn9B0gTXwLgCSZUEWYhYgnvePDgzu7GaMz1fPV4w6UDrXjKtMkPih1ul2YOTfh2s/Xv23qz8jQNJXYUUbprIWbx3c0NHN9g8MmSEvStBVTaftRSCir4T7RSCu45Wfwz/jTDebfAEvegRwR/CjPnuhScMGQ/lfu7gszhwjC+lIjp0bFQD6JIkJaITnkCeIkPShk2/Y7fCeC0KleuRI+YX7Wdy7TCgh4YMandI9kZ7wi2Y+B0SQnCYHMnVrD19B382Bb28hvNfD5RRTqKfzAfMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YNnDIbBo4AmbULKutUwqN9zkvUzfEfxXiAOsvFbYLL8=;
 b=RlElkvXgYAlin69GmQyQ+0OGYanvvJXzs6yQzNRauIuDvFyOXMHsEkyYqwoBk7ig+MPAAqnMdu5ySJkEYzLSYiMeLKU91AHCiMAiKmOQHE3rUVlI3t4caVfdg1pIL+QCeU5XvrMsVjtEMwMDsEdAal4vbRgPOJQZ2OW9uMbDG//jmHLG51/fCGlVyTej0FH6yA0qIGXOn/tl1ukYWFnIashUaJYzm8ZOHxXb/v6pf6c4MnlW+ueshnnpwceR7gPJK+CPlOtM9dBHbMlytRMl0dtzrwNDhSLPXzQ56o7HYSTG6R25Ois5Kkp47UFW+awhFhdq5dwJZqsvKXbhySLPIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB4905.namprd10.prod.outlook.com (2603:10b6:610:ca::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Sun, 18 Dec 2022 21:37:42 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::c888:aca:1eb9:ca4f]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::c888:aca:1eb9:ca4f%5]) with mapi id 15.20.5924.016; Sun, 18 Dec 2022
 21:37:42 +0000
Message-ID: <536981a8-76a3-54b9-a70c-a86994c027dd@oracle.com>
Date: Sun, 18 Dec 2022 15:37:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] scsi:core:Add sysfs interface to control if skip lun
 with PQ=1
To: Wenchao Hao <haowenchao@huawei.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        Lee Duncan
 <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
        linfeilong@huawei.com
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <20221214070846.1808300-2-haowenchao@huawei.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20221214070846.1808300-2-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR05CA0043.namprd05.prod.outlook.com
 (2603:10b6:610:38::20) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|CH0PR10MB4905:EE_
X-MS-Office365-Filtering-Correlation-Id: dfe90122-1e19-4fc6-0f9b-08dae14017c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GdAMERNRgqT8dKGgIhufX/Tf6x/8h0O1gCd3ELmrSwswo9YRLnF3ndomd4ixS4g7JDKQasyS6L4kRaRHWb08hv05t6ejcagIJyjFJgQ8s7DfY7UbOOPeGJErBVcQiPEkFBpWklGpmBFs1FO1kjQIJ4vch1f2t4Vvagez/Cfc9tZXBxGYQDASIYy82p1e1H46X1fzw9oeCHVIdKizOqKE8t2kqfMk/Dy1IhMO34wmnZrHnnRlYH3SQu1OkS7/rDZXwCRMN2YvmA/nQIyAhVFcO7jlJ1asbx8vp6KR24FPzHM2NimFS56TDStIQ3Sx8k6a2Jkp8KC7l/Z7BhRTEEVSruY1+4YQ1TYrEigWPshfYTjUu+a2NtRV+elGf0DHkT56yGVhRk/rsfnyylyPibitz8sDCG8oGC0q7fz/rO+OcMzgB/I40gl/yXaNdbkr3tMs69/Uf4CflMmM5wtf+wpd8YrqNklEwynGH0GU12DkFBdcni3zxRc6jMrfZHO9hkU1YdQqxTxrr6xR4KZ3dQvRplBxOd5nvgCxz2nWbDYPaWuIefz9l7nIvyUCddOH3x2xs4Sg7xmqk1JolzoJeNOdnbQWYQQZGSyjrG+bO6RRVsq7prDkR3bWreb1EGlXNuc1E4xwb5b0ezmnjey2SYP0R/8tqKJJdM8fB8mbVLh0lSf4K/X3pgeUXBvQlhdPIulx82PCW9MTbmGacT1SHCnKjoYkxs46H6QZ2M1Qqxnx0QU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199015)(31686004)(478600001)(316002)(110136005)(31696002)(86362001)(36756003)(26005)(53546011)(6512007)(186003)(5660300002)(66556008)(6506007)(41300700001)(38100700002)(2616005)(66476007)(8676002)(83380400001)(4326008)(66946007)(2906002)(8936002)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0grc3B6dmRIZGFQck83QnlVeGlVQkl0ZHc1cHkyc2RxZjZlS2psRExsWTRi?=
 =?utf-8?B?VkxkdndnMnRkSWV3c1ROWW8ydHlMUDVmZEZ2YmtOaCs4UkZFYjJQYnJCTVgy?=
 =?utf-8?B?TWlvNytlVTFWZ0hHLzJIY1M3MnI0RmVteWZLNGphV3VJbkFUYTNFUTEyMXBu?=
 =?utf-8?B?QmlUclZTMlUzN20xOHlkU3NCTkhDbnVranBqZ1F4VzdSaUwrcnFUQmphbVNB?=
 =?utf-8?B?a3dqaU83cVNaRmhZVmwvd2twYUg4akFQY0NNZGdRTTN3d0lHUmp3K05zaUpT?=
 =?utf-8?B?dEJwQ0pIWDlYNXdUYk5LWkxKWlQ5QXp6K0lsaVh1S3k5QmJoWUQ5WGlwczdU?=
 =?utf-8?B?NktGbmhuV0Jhb1g2ZmJnYVpPK0w4b3BkWFhjY20rVHZkd2NIcmxFSVlRZDZY?=
 =?utf-8?B?eHh5R2R5OEFpWXpTaTJkSDRpbHFPS3kxeG04QVNRa1hrNDN3UVdVaW5IN0NV?=
 =?utf-8?B?NFAwaFUxckZCN1I5SnVmZEdRMmdHelk4dUZCUnY3NDFubmNSZmNhZEFGZ0VS?=
 =?utf-8?B?YSswalhGQ3pPTWhFY0dnU01oWStRdmx2TWFSTkxhQVpDNnlRZjhXVTVkcUpR?=
 =?utf-8?B?TVFHVHdUVG1RUGVydlVtWFp5RUwwMzlYTk1iZWc1N2ZiNlJVNENlbGQwMmFC?=
 =?utf-8?B?L3BYOEd2VkNDOXY2T3Vpc0tsbXA3TTdib2x2MHR5Y0RCa2ViYjh4WmVVd2NH?=
 =?utf-8?B?TDZRV0Q2VkdvNS96c09NMmZwekgwMm8vTU9VbmVSNmRmMk1WVVF1a0JUSlhs?=
 =?utf-8?B?WFhWY1cycU1HTGNMeWk2ZFBFdk53eHRBU1FQLzhVYmZzbTBnaHBIRjJuaVIx?=
 =?utf-8?B?b0FEQ09WblU4N01wVHE3K1VYZ0hDMHZZSkhBekwwQlo4QTRnTnNWQnQvVCsz?=
 =?utf-8?B?MGg2MnhLNjlJcVdFUDM4Q2c3YXMrUS9Bb1RHUHRNUEV0NVJUWEJGU2VMQ3JC?=
 =?utf-8?B?b0F3bmpMRHFwUTF0NzAxRThMSXZuSHNVNUdGUHVJY1FMUmhhbEJ1RmRzdGJE?=
 =?utf-8?B?YVpvNnlEQ21ha3pUSnpCMW11VXJoZWJKSkcrZDVDWnYrKzNTc2w2bzRQL0Vs?=
 =?utf-8?B?SXFoRGJhTk5BUXNzS2krUUVzSnl3UHAydG9RYTloVjNjQ0lJU1dmL2MwbXE1?=
 =?utf-8?B?SjhmeGJvSG9DVytucHZ3cXg2ZVQrOGRNZTZLNG5YTnB0SzN1dkJPUy81TkNo?=
 =?utf-8?B?cjM2dzhOSzhmOTQ2TWlndkx6dFFYbjI1ZzVYVzRjMFFBU0RIbC9EY2FmMENB?=
 =?utf-8?B?bWVBcXI0OS9RUlUwaHBzc3ZaSVFYOEhzYWRNck8rK1dqUmEwWEdjMklmMEhO?=
 =?utf-8?B?YXNJMC85UWtqVjFpUHVRckN4Nnh6OC9HTytzcFl4ZXpDQ1N5NGdpeEIwN0gr?=
 =?utf-8?B?Zm5tblNBd3BZUE9abHlwVDIwRkEzbzVsL0E1WEYzeHFSemh0RXBzNlkvMS95?=
 =?utf-8?B?ZW5hVFNOd25sRzFGdWs4cDQrRHhiUncxUEpFZ21EYkhoK3pvQ09Bc2pJUDZu?=
 =?utf-8?B?ZG9YY0ZaTnYrNnVMVmcxNGpjblVZODBYdmN3cVRIQ2UyNVJZR1hycWRMeENK?=
 =?utf-8?B?V0l6MDRsY01sK1pNWHpLZ3Qwc1F6UHJOcU1KTTU4UGlvb29jSG9zd0NCQ1kv?=
 =?utf-8?B?RUc0SUlCTG9PZFUyK0h6K2k3dEp2R3lqejdRc00yckdSRmtZUzc1NDUrREVa?=
 =?utf-8?B?N2c4YjJGRVRWMW9WRzNGdzhFYXQ0ZEJFaldLTjJtNUtMVWxJblp5cnZ1WXRP?=
 =?utf-8?B?Vm4zVS9GNmhmUEVFcXNYMHVMWjhHdVU0azRkMHlNclpNWE1SLzIwNk1FUkpC?=
 =?utf-8?B?MWk4ZncyOEd2Z0hqc3FhcjJLaG9GVnoyYmZNM043b1hBSXdjMERjWXFvU1Vx?=
 =?utf-8?B?ajlKMWhRQWhpeFBCaWFWaDcvbE1FZUlSNVRzRmFreFBBUktQQTQ1ZWZpVEF1?=
 =?utf-8?B?N2R6aEx1OFB4UFVwQzVoRElkOGdhTlFvc2pSUXdHNGc4M0lZVE14S3BjRXFm?=
 =?utf-8?B?WlN5QWZ1Q2QvTkJpU2hHMHFpa042TXBDMlhQZXdCV1UwODVyeVhYNTgydTJw?=
 =?utf-8?B?UHVKZkdiRkxVZVowS2ZMc0wwT0VvMGVxU1YyVDl5Rm4vRzhhWm5QOHZ6dTA2?=
 =?utf-8?B?cmFkNmtkZHE1M3lGWXJ4NmQyb3NETW14SEV5bXl4RHA0azFFUCtDdzBOTlFh?=
 =?utf-8?B?aWc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe90122-1e19-4fc6-0f9b-08dae14017c5
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2022 21:37:42.1168
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T4icT8FBhBI2xJsPtAHTIm+vKmJ5EvoMoI+7HHbgJ1On24kuulj8qok/1xQYNS5+g50Aq+cvja48hjXQvbiIt24IwQjlOP/rgwXBHqW2YHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4905
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-18_02,2022-12-15_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2212180205
X-Proofpoint-GUID: plFx1AHA6Rfi1IaED0LGAG6Oo8DYzmNx
X-Proofpoint-ORIG-GUID: plFx1AHA6Rfi1IaED0LGAG6Oo8DYzmNx
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=k60NMJFd;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=RsKszpV1;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 12/14/22 1:08 AM, Wenchao Hao wrote:
> 
> When iSCSI initiator logged in target, the target attached none valid
> lun but lun0. lun0 is not an valid disk, while it would response
> inquiry command with PQ=1 and other general scsi commands like probe lun.
> The others luns of target is added/removed dynamicly.
> 
> We want the lun0 to be mapped to an sg device in initiator, so we can
> probe luns of target based on lun0.

What do you want to do exactly? Is the idea with your patch we would create
an sg device, then in userpsace you would do some scan related commands. If
you find devices then you use sysfs to have scsi-ml scan/add a specific device
like

echo 5 0 0 8 > host5/scan

?

It's not really clear to me why you need the sg device, and can't just do?

echo - - - > .../hostN/scan

? Do you only want to add specific devices like you are doing some sort of
LUN masking on the initiator side?

Is the issue that you need the sg device there, so you can detect when a device
is no longer present on the target and then you will have userspace remove the
device via the sysfs delete file?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/536981a8-76a3-54b9-a70c-a86994c027dd%40oracle.com.
