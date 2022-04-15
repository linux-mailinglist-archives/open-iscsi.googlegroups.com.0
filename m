Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBG4Z42JAMGQEU7XM4IQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A051502C72
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Apr 2022 17:17:55 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id z18-20020a631912000000b003a392265b64sf86687pgl.2
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Apr 2022 08:17:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1650035868; cv=pass;
        d=google.com; s=arc-20160816;
        b=ju6fSjm9Sd5l4dbrIIgO5oPaoDGx8EB2necuLmiCB/9HM3XeYOvxM+aGkw34iOWzXP
         C9dtwhkOtGRnPBws6RRzlD1qI5i+p4uBQqEQbxptI784SmvLygm5YC0T54FZXgpqBB3k
         myqYNJ5CMfLH/8lY91iST8BnC/AgSxnuKUQrBGRgafKs6aDcPoSwtMO8rTwlkykvYVvr
         n6ulp0B/6SnPYFjmCxOXdaqmhwvt6WEZHQn3tTBoqrGCwjaou9YaSXxJSQxiRX6w8ekb
         MGeq34AymSH5lU7zy3q3JQkzEwYOhLwZ3aowLjTeT9NBRSxeE8zJngLR52p49KvDckpV
         tHvg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=AfrPlkSMTER+t+0mE+f/Myk1liXuu0Ex/PP6UQ+oBWQ=;
        b=nb2CoVjZPFC+HECUQkXYJBkUk2QykchRjGvWIZlzCFWxHYkGPrMi2Qk+J9jDUPVvKE
         /urPuarZBZiWSMJHF0r8ljBHLPM/02DvdpUd9OxbOCXsfvtLVze3onWfdQ7T69rAJ1Bh
         6TLd9Fe+WowErdcT5g61NSAd2V1H81wtdIAun0TnG/A89DHf/MCPKCZAygVjsyBaFGxn
         reSfFbcdg5uf2XAuc4gYd7NrL2kKfUosMgOiIZLFN629KiykSc/OjeZCwhfGzn7ACcCe
         JnIbMim1Cb1bi8gzhLKfwQbdm0P/nID85VYjPjPIXP985/z+lia3RCHhndSdFCU5iyo4
         S6sA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=pdEnaeAa;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=AfR8sivo;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AfrPlkSMTER+t+0mE+f/Myk1liXuu0Ex/PP6UQ+oBWQ=;
        b=rOmtl5iP8VD2xY3UQk4Eh6e+iBve3J23W4y1T5MA5qtDidmHgerW7Jk2r0IzIlpQ1w
         2WsjhpXYR09Y7syvOY+vKvCj+uYWwz0TcDVrfVarvDik79L6ybh3nYqUBwBvVat7jMyG
         Zwl+ghzInikrf6pj7ZVCZTSAX8FkuuC/B+Z7xR+scaKhQ+fb1Kf/JlDmQIUYm1YwFFjl
         xBXIGsRQQUwDmtYOHemTr+Zxo+Zm/+abtLwESqHwLwfpzI1F25+ui9nmkNIxo0y1mDnM
         xUN9LeJMvZo/ElwgXUj//eKOIcQIE3ojx/R55bPdHhsdZOyKV2AEAKFNpGxkmYY0ldB0
         8lbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AfrPlkSMTER+t+0mE+f/Myk1liXuu0Ex/PP6UQ+oBWQ=;
        b=smmTCqux5s9oJe8hMo/4cuUdFk0O/YEAO55ll1prPuhZo9Jp4vtlRNyPP/i2Y8dRVi
         kuvbXRyYmXKSHndVaNUDNqw+CqzJwunpcEzQ2JxfTaq7uooS0yGZiCZ5tiVYFg+bHA9f
         59NV8XmgATQh6HTXEtyRYWUW3NkGFYJNClTtkqgiJwguwjGJ7RWcY6rB+8x6xz2ePcec
         RIHs4sIxlREL/mAI48jhExiwkzEDRxIPDppFxGrxtzNfpvuj6q1UlNzbc4wwXR4Jbi6n
         VkAJVxJz4NIQq9Xm6HZAzAl3ReIszvBGTAylPlv2BHLO5dvHdNPFAHTr1jqiMHCRLrBn
         gxIw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531e9cmUmawPSqcO4AXYVd6di0uPYAs5UbZCbLREzHUYf8+UIPZ+
	cfFDlKgS6wD+MbF0qiyc9tI=
X-Google-Smtp-Source: ABdhPJydbcxhemcwbxMOdrByj6vE4OkKFI3ldbRvfdnp0bM0o3PWYVmUkkaUncMWdda90Hj1x1iq8g==
X-Received: by 2002:a17:902:a714:b0:154:6dfe:bba9 with SMTP id w20-20020a170902a71400b001546dfebba9mr52391140plq.124.1650035868484;
        Fri, 15 Apr 2022 08:17:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:13a0:b0:509:8203:1afb with SMTP id
 t32-20020a056a0013a000b0050982031afbls1966111pfg.4.gmail; Fri, 15 Apr 2022
 08:17:46 -0700 (PDT)
X-Received: by 2002:a63:18f:0:b0:37c:4671:a2ce with SMTP id 137-20020a63018f000000b0037c4671a2cemr6881958pgb.429.1650035866486;
        Fri, 15 Apr 2022 08:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650035866; cv=pass;
        d=google.com; s=arc-20160816;
        b=qBI91WwCdGHsZixOBdEpFwB2wygdINpx1TxPv9y9m1HQ+Epb0hZzl3xuxitNVq6KUE
         VQuBSn6z7LeWMCT+JHlXpudG6rSn5Dsh5yT9GMTQ47qCCuGIg4L8OnszfCw8kL9xoM1D
         ghc06RiebvLJSJmoq2f4ArCIe8tsVkcQ7SRWUrfwjxt8KCKkpAjCmeIMYrdpd/rHzcrv
         JBITFk/L41QVWrV1NPGFjDBtdc8Ch2MYTHUpc4WPvAhuaxw4DPjT1ny3H/yM2g6Z7SQe
         OJjvN96QuzFIPK2x1PEwfBJXQC7JGVKxxV0+3yecqAeAdq7ZUWOqzWKgjSMkr5W3aBQh
         zUiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=9x+mOjrjT5ZspT9CE0WOPCsfraun/iEFCNu/miCf+zA=;
        b=w3o1OHU8Ij/+Hlls29WME9LnwlA26gpzRGVGV8V1S+kNw9n1zjFaAmiL1xu2szV3G/
         GfPVEebJJ/iP2GIQjMQudR2B+58I9ccq0kH3YtKT3dA21TO705pHuzcAupZqmQkO8bVm
         huo45ze8fIMWrjJ06u2tIp0Rkm1bXTPnyyGRqtoG6tlpEqV1l+3wSeswZiDZ52Wy0kYn
         TM5e8UarzhsQC3uVTjmgRG7RAQ8D/DhWnnRMMTqw2UM1QIAyyE7fQdcec/h8ibSILRuw
         eeeq29N+lQ9WHhOg6ULBSVObKwc3YWFDTMTDVTyfm5cdy2zEJZL1Vg0Rw0NAyaR3k+1l
         Mjxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=pdEnaeAa;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=AfR8sivo;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id lx13-20020a17090b4b0d00b001cb99b8890bsi654845pjb.0.2022.04.15.08.17.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Apr 2022 08:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 23FBZMFK012645;
	Fri, 15 Apr 2022 15:17:45 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com with ESMTP id 3fb2pu7kk0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Apr 2022 15:17:44 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 23FFBaI6013039;
	Fri, 15 Apr 2022 15:17:44 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com with ESMTP id 3fb0k6f9wc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 15 Apr 2022 15:17:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lk7YSVwMQ4ojQmmyh6m9acD7NPMH9lbdYt3Xj/4firtkLZ8pyouaY9e7g9UoEvLGbNvszNRR3OA4S7QvpcLofAiYMF1Omg9O+73FeuUG2Drrk5SIPi++0tVMraX36YLTVB7uPmLP0QtSSbvC3Vs3FcfdQYnz1BEJpoUxSAkEkeXOR9tV5g3bKzjxgGWlgCbkFGdU3XHmsNfgMdpfZxK9KwL1fGXfurM5lsoDjqhNC2hn2Mh8HlQLCG/z5RCdQtzzowxDKTn3ET9WkiaME2QnJe0OxV1vofk3ZRq4sSlYgBg8i/UW8EJ9ZbJPH0LXXYQ4/7Dy/hSiKwIWIIcVVTmh+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9x+mOjrjT5ZspT9CE0WOPCsfraun/iEFCNu/miCf+zA=;
 b=K5z8Ex9XBf6jW6685q4Iol78v/woeK/Hcvj3YuZ9ImMYj1Xk7g6Jjegz/PClS5aFQGdjocWsjXPBMO4X0OYLaWTzGXvm2vSndS7gnnzyuZEFuN1MkRBV5PdPhnMNp6vAYbImSasj/6hOEgP+pYeDtn72iFVPxjyqvQOe8og3laSX+rr+wzGVsFnm5pHjkW/S9YkYMgwuf6XN28S2deB5uhW8uvpGV90/KQ6GMCq0Tu0aHrjG6PEs8JwHqSYupCd2hqG6aisq59dcuYb817hE3HyRitJHbNXDx/7Jj+6tjxmkMlLy1ONbF2/3ox607R5wFxvPQuaV7V9sTYt2n8bewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DS7PR10MB4960.namprd10.prod.outlook.com (2603:10b6:5:38c::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.20; Fri, 15 Apr 2022 15:17:42 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3cb2:a04:baff:8586]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3cb2:a04:baff:8586%2]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 15:17:42 +0000
Message-ID: <8d3c80f0-7ec1-4b6e-3e3f-87be1ef8c8cb@oracle.com>
Date: Fri, 15 Apr 2022 10:17:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH 2/2] iscsi: set session to FREE state after unbind session
 in remove session
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: linfeilong@huawei.com
References: <20220414014947.4168447-1-haowenchao@huawei.com>
 <20220414014947.4168447-3-haowenchao@huawei.com>
 <a8087705-2cea-f01c-ce67-639e97edc30a@oracle.com>
 <f587206a-4479-1748-9211-086d79249b95@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <f587206a-4479-1748-9211-086d79249b95@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM6PR01CA0013.prod.exchangelabs.com (2603:10b6:5:296::18)
 To DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b0178d5-7d57-48c0-82b5-08da1ef31620
X-MS-TrafficTypeDiagnostic: DS7PR10MB4960:EE_
X-Microsoft-Antispam-PRVS: <DS7PR10MB496058BA900E8539E09295B3F1EE9@DS7PR10MB4960.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eg1BtoUr6dWW7lBnRy+ZOiCyAuRO5HV61aXCMYwqOq03aRgEet59yiDiv7bwNW8aHM77YpsgQtbGbX2fy5lzTT/EwyQKdyo0E2rrJTDhBdthqIYxbW0xBX9QG0kRjjC5iDxCG51KMsBGcjzg+gGIHhc9Ki4GKQml0HfttEYsFy3E7RcKy03i1kAdh0q3thwZMWdwK6Z0ZilCK1ngs6AGoAerxsi2WhbmM7UayX074/ipgtc6lPY32HUGTmwpaxymlLv3z7QcNjnklo8TUtRZAv9qwx7gsmFk0vPD8ng0mHQVSafMnAfy72TVxL7RMSkYLEKYrTiwlBS5mpnhkOefRE5n5bXnsjzJ84iHzQNpOFjj1CszPNU29zXTdEtHQqqqqwslElMCmnnN3bx64erw4f//cuPD8+9gdCga+/a+d6kLRDB99fZqF9j60e8qCD+FH3V9a3TAx7O4h2WOzQth2crGILvAeftWh+kKdm0B1SMrnto29DkjRQxt2bfLmyLb1xSucByEpK36qBLsI4VYDRyU/6cNtEH6Y6acfwIPacQXx39tRVnrBfzA9o3cow3cMooM8zhYkdV8rSLtbM6Ts9sWiy0RIUjGXE1Wch0hFo9M3l1drYlTP0k4nsiKXI+8StqdVgxIT4Xy+kpP1CtdFqtW8eFSyPtJprAKP61y3Z+Y3h/X+DvGUsljHcLNYXSqJ4G5IdPQMl38rOtT9tWrvsW0SSs/UWbUIShObsW7v8U=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(110136005)(66946007)(66476007)(66556008)(83380400001)(8676002)(186003)(5660300002)(86362001)(316002)(2616005)(8936002)(4326008)(2906002)(31696002)(31686004)(53546011)(6512007)(6506007)(36756003)(6486002)(38100700002)(26005)(508600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmFCSU9GcWM3QVN5R3hEVXpxeDJhZjEyazJ5NFA3emx0V3JScGlUeEtTUWJK?=
 =?utf-8?B?SlJ6dTR1emNLZzlxeUZCVHM4bUtqNFJRSjF2WlVLbTBFWEFnOGhnb1JUVWJv?=
 =?utf-8?B?bUd3NWNGOXZZeVpNTWVOODRlZ01UcjVxV0RBemNVUGk3ek5kOGxzQlIreGZK?=
 =?utf-8?B?VFlmNkZDelFHWituTzJFTkV1NFdrRmJqZVZUSDkrMkVPaHhqNnhhOU1BYXB4?=
 =?utf-8?B?QURTM2orRWJmNHdoWFdxRGczamtsRHdwSENWZlBOUzlLZ2t5cHNwKzFtRkZ6?=
 =?utf-8?B?MmdoSFd6NUdJMFJpd2p0RE5ickp1OHJZRFVWdjNNZXRpTnp3V0xDamRoeUNu?=
 =?utf-8?B?RnRuWVZlUkhnNXBhcnc3UjlGcTVvYzUyekxsTCtwb3E1bVJuaWxnOHM0SndG?=
 =?utf-8?B?enBHZmxVeE93bDkwenc4eDhPcGdmeWNxa21uVXFxNmdyVzc4QWo1M0hlWHpz?=
 =?utf-8?B?VGtlTEJCVUd3Q0xaWmk2T1poSHYxdEduK0JZMG5NTUpzS3RXNnhZeHhLNThG?=
 =?utf-8?B?R1oxYnhvKy9WMjdKZUlDa1FHbGI3LzVLY1pZcG5rZXc2bXRPWGhDQWhiKzR0?=
 =?utf-8?B?WnlIQUlLVzhYdThTMkNaNDgxclhwbFNpMFkzQjNsK2RISW5HTjljZjlaZ0c1?=
 =?utf-8?B?Z1NlNjNTNmpHblVIOW9FOEt2OWFMd0krU20xUEhwYjA4RHI5c0tROFBGWDQ0?=
 =?utf-8?B?Zlp6ZW5leEdSeUdROTNIeEFHSHlyMlErT0laUGEvS1Q2VU1BTGZRNEthbGZ2?=
 =?utf-8?B?cDdIT3dvL21Sd09OcFNIRDdhOEFRTTBtUGYzUkF2aW0xM3ZyMWNQQW15eTRR?=
 =?utf-8?B?c3pDSW9OVUk5TlhYa1RaZWFQdzk0SVhOYXo3SEREdy9YR0oxVGRPOUhpZy9m?=
 =?utf-8?B?ZTE5WUFoTTFhZ0xhN2NTTFpYMEx2NStkczV2ZDJMM2pCRHdPODV1a2g2MEQz?=
 =?utf-8?B?aWxyTnJqbjJiTEVocmwrR3p6dEtZeGR0ck5mcVpsVFd0d2lNTlJ6ZzFaVmZ1?=
 =?utf-8?B?alVrSittVkFrMzZGeWh0cnlsaEpUMVdnODRCQmFYcVRrWnA5NjNLajJUK0VK?=
 =?utf-8?B?VWxTbUVZdXlHQ1c2L25QdDNoK256bGlHemV6SFRVYW1YanJxV01UQW9TdFNr?=
 =?utf-8?B?a2Vra0hxcEFGOVh4dE1USFFDSkdBYllkNEJZNFdKaEc1K2dFaU5aTE00SURa?=
 =?utf-8?B?eC9EenIvSlJHdWhYRU9VMmNsMUNmd0I4bHEydEhBSE53enc5RHFiQmVYWjhG?=
 =?utf-8?B?L0VrMjZocXo1bXZWK2YyUzU0RXNTMHhWTmFCYyttSFJ3K1J2Q25NaDZCcGQ0?=
 =?utf-8?B?VGRXU3pOcStyQ3NEeU51VUNLSnB6UUxsZDRHRllacWE1RVVrRFovVHpIMytZ?=
 =?utf-8?B?Zm9iKzd6QmpTSkVHaitTL1c0ZE9ETFhldTFWOFJYYTlxSkNyZkMwMlAyVW5X?=
 =?utf-8?B?d1NNQkR1ekJuQWcwYnNUTnd6UzhPRG5pUzY5YzMrLy9QZm14TmhYa0NuN0hh?=
 =?utf-8?B?elBWMmJOWmFhNithRjZudE0yYTBuZm5LZ1VZeXVlZnZGQ3ZYRTFUbU16S1pQ?=
 =?utf-8?B?M2ZGMWt2dUx5YXIxVlBDNUNEd2lHRThmdVNPNHVoVjY1MlR2dHF6Um1YdGhO?=
 =?utf-8?B?NEQzeXVVSlZ5VVVENnlyQzJDLzEvd1JYNWZLaklMaVBoVGFMY3hwekNxam5q?=
 =?utf-8?B?Z2l2S0Vvb1BtRHJJZWRkL0Z5eGFxUTFHSjdlZUN0d2lZQXplRDZQVlVLNU9t?=
 =?utf-8?B?MUJ4RUR3QUJsNUFBRUVCTDVxRUZqNGNQcmNGVDVSdXVGTjF3R0x4STZvQ2Fj?=
 =?utf-8?B?c2pPSjh3SHVjemVkaGhPYjh3cE9pTnNQNmtMcHZSa3dtY0JuaFE4R2VNUm83?=
 =?utf-8?B?cFVEQW9Ka3hKQ1BKSW1rSC9VajFCQ1Z1RmlJM1hlTU9PaExLSUhkclJ2a1RT?=
 =?utf-8?B?Q01Gazg2US95Q2orbVpYbmY1aEo0N0tlUVMwOHk5Nk5TTzh0RC9vYkxrNkVD?=
 =?utf-8?B?NTFyQ1ovUUVabWJGSEFndXhZRVV3V2EyTzZrT3hIS1hqWEliVzUyMzRJV0Na?=
 =?utf-8?B?Z3hEZktQeTlBQ21yMXJUaEExTUhHM0gvMTEwUUZNekZTd2E4MUthRDg0MlRl?=
 =?utf-8?B?SE1NMDZCYTNZdWowRE9SMW9kTUVnNVBIVHFMNUNvVkNUS2sxUmVDKzVDWnZm?=
 =?utf-8?B?VGdnY0hBWlRPWFpTTHA2RmZmRVUyd2RRU1ZXN2lVN2hiZmFJeVFCc3hPYkxv?=
 =?utf-8?B?VGtNdWJzRlBKKzdlMmVRU2Z2dHlZckE5bXNjM2F4S09hN1VnTEw1ZWQrSW5h?=
 =?utf-8?B?cVZKVVdtSVdKV0NOQ0pOWUhEbnBKOFVTL1lRM0hmWGZ0S05kbVpJV3NVREpH?=
 =?utf-8?Q?gG8fqOWPMCbGyQAg=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0178d5-7d57-48c0-82b5-08da1ef31620
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 15:17:42.5649
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WyPTe66QkShQRgSg5xntpc6RATIF/AQX/bm79W1h8ItaDoYfgc2ogM6/wl5qdSooBIIYMS6iiBn6grU7aYG62/5YVTE71mHjPMCwzs4BmHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB4960
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-15_01:2022-04-14,2022-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=0
 malwarescore=0 mlxlogscore=999 spamscore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204150090
X-Proofpoint-ORIG-GUID: gpy_jpmXIQJZmMBNHF3u_obmfJagi3d4
X-Proofpoint-GUID: gpy_jpmXIQJZmMBNHF3u_obmfJagi3d4
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=pdEnaeAa;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=AfR8sivo;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 4/15/22 4:40 AM, Wenchao Hao wrote:
> On 2022/4/14 23:30, Mike Christie wrote:
>> On 4/13/22 8:49 PM, Wenchao Hao wrote:
>>> __iscsi_unbind_session() set session state to ISCSI_SESSION_UNBOUND, which
>>> would overwrite the ISCSI_SESSION_FREE state.
>>>
>>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>>> ---
>>>  drivers/scsi/scsi_transport_iscsi.c | 26 ++++++++++++++++----------
>>>  1 file changed, 16 insertions(+), 10 deletions(-)
>>>
>>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>>> index 97a9fee02efa..d8dd9279cea8 100644
>>> --- a/drivers/scsi/scsi_transport_iscsi.c
>>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>>> @@ -2173,6 +2173,22 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
>>>  	if (!cancel_work_sync(&session->block_work))
>>>  		cancel_delayed_work_sync(&session->recovery_work);
>>>  	cancel_work_sync(&session->unblock_work);
>>> +
>>> +	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
>>> +	/*
>>> +	 * qla4xxx can perform it's own scans when it runs in kernel only
>>> +	 * mode. Make sure to flush those scans.
>>> +	 */
>>> +	flush_work(&session->scan_work);
>>> +
>>> +	/*
>>> +	 * flush running unbind operations
>>> +	 * if unbind work did not queued, call __iscsi_unbind_session
>>> +	 * directly to perform target remove
>>
>> We probably don't need the flush_work test because we are going to
>> normally call __iscsi_unbind_session.
>>
> 
> I think we still need calling flush_work here. The introduce of flush_work

Above I was saying we don't need to *test* if it returned true/false.
Just always flush and then call __iscsi_unbind_session like we did
originally below. The check you added in __iscsi_unbind_session in the
first patch will detect if it's been called or not.


> is to make sure sysfs objects are removed in an correct order. There is a
> very low probability that __iscsi_unbind_session() triggered by queue_work()
> has not been finished, and iscsi_remove_session() is called. So we need
> flush_work() to make sure __iscsi_unbind_session() has done if it has been
> activated by queue_work().
> 
>> If the unbind work had already run, which is the normal case, then
>> flush_work returns false and we end up calling __iscsi_unbind_session
>> like before. That function then checks if the target is really unbound.
>> So the extra check doesn't normally buy us anything with your patches
>> because in patch 1 you fixed it so __iscsi_unbind_session doesn't send
>> the extra event.
>>
>>
>>> +	 */
>>> +	if (!flush_work(&session->unbind_work))
>>> +		__iscsi_unbind_session(&session->unbind_work);
>>> +
>>>  	/*
>>>  	 * If we are blocked let commands flow again. The lld or iscsi
>>>  	 * layer should set up the queuecommand to fail commands.
>>> @@ -2183,16 +2199,6 @@ void iscsi_remove_session(struct iscsi_cls_session *session)
>>>  	session->state = ISCSI_SESSION_FREE;
>>>  	spin_unlock_irqrestore(&session->lock, flags);
>>>  
>>> -	scsi_target_unblock(&session->dev, SDEV_TRANSPORT_OFFLINE);
>>> -	/*
>>> -	 * qla4xxx can perform it's own scans when it runs in kernel only
>>> -	 * mode. Make sure to flush those scans.
>>> -	 */
>>> -	flush_work(&session->scan_work);
>>> -	/* flush running unbind operations */
>>> -	flush_work(&session->unbind_work);
>>> -	__iscsi_unbind_session(&session->unbind_work);
>>> -
>>>  	/* hw iscsi may not have removed all connections from session */
>>>  	err = device_for_each_child(&session->dev, NULL,
>>>  				    iscsi_iter_destroy_conn_fn);
>>
>> .
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8d3c80f0-7ec1-4b6e-3e3f-87be1ef8c8cb%40oracle.com.
