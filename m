Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBRNPQOIQMGQE2OOXHQY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B6F4CC078
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Mar 2022 15:59:21 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id n12-20020a170902e54c00b0015011534fa3sf3051871plf.9
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Mar 2022 06:59:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646319559; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdVjQLe2LUReI1qzZT/QUT+9YKfn04pd++dQDNm+NhXDTTAOqpAn5xB98Br4jAfzGv
         1FQpeWef9M62Rev2GQCoSUP3IgW68dXbG9lamB1viV75A8SmNFBblyiVH3Jb6aIDDOEU
         3/SfMbQSdCt64pRGUnNXlqEbxAcOyOKXXNYTxU4GPGE7yJyzDgFU7oyVz/ihu9OO0o4f
         L6BHk4gXRuWrJKA7nQIMxjH38/mrKrw9iy2LmYTUBDRxXnnWdULXt4iqXhm9z5/6IinE
         yDP1J34o5C4CIAvCxRCuOQyAal3wzJJD1QWx3Z7o15eARZ7LFzozmPoMmKYEuVgP8CSB
         yG5A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=orZHQ6GMZpekRH4m4h2tADcj6JBHeTiWrKcixyZoNUg=;
        b=rrw/OQZHhTG2WfqTu6hquMvPKFhKZawVAwumjO3/Z77ZtEMoAhMFVXKRoWb0PdfHuy
         YpPoOvyHuMQpkiAGaFdCK901jLcdBS8uEQ8SBgyad6dizFFLjy0aTDQqODTALF/vD5TS
         yQPo/hRUskT/toSv/Pbb4ti0v6hqJHsPJISPeZ8RxLaKuiSP0Oh7TMwR1fi349bzXEgS
         EGeEPtYfuwYt/wtJL7LWFlQDpOr8MN4qD9iKBXcowqNTYSGYTwI/UU3NO/SyIZEobKro
         ByOkF8JHCIsYmIZoeXLJSfcQ8cWWMWAa/tpyCEiWkPIWxOV+C14UWTJyI3aXkJm0yAJU
         VkDg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=k2A4DJsE;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=WuwEY2PI;
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
        bh=orZHQ6GMZpekRH4m4h2tADcj6JBHeTiWrKcixyZoNUg=;
        b=L5FQHCBAfjfoqGBdU3ziN8WGmgIyiqnBkps3SAYtu5wF24g4nHR09V7mjsDbAJCFXy
         04JrbrfcWP3nzftpVYWav43c5DGqVXvmqmn/oalNDWufzfNSQ9JQ9V6pZqdv5nqPsKFq
         rH0Cq1lRPB3V7K3BKWsKPRJwnjyTrYRkvjL9lpUn6GlAF57M33gQ5NoQqdN1Wxm4Clun
         6SrkmmSuG9S4p1OE7Jm4oEk1plPhI1wV0qd2u7HIcDC98JlNpNEucAojC8PlOPbeu10w
         wZA7TjzBuaxbd3pe0Yk92nSOGvvd1eF+pH9+tU+WP0RzYbo6zprhedo06wKaMfuCgRCo
         5qyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=orZHQ6GMZpekRH4m4h2tADcj6JBHeTiWrKcixyZoNUg=;
        b=ux2niMcKDgzLEq03EizZ31eKzDmXiw3uORFoWJZ1n4lJ/VtxA5boEG5qidcFwhJwSK
         97wjf+l8RMjbiv35iVbACvPjgjp/EgrmLnZAapm3TW/dEVDM+aKGEes+M9CfDkATvJXI
         Y9yyg1MTR1WYzKYqHrey3z+kSlQSuoSkPTtHBlJnwDoAJ1aCfrPOizC+3VY8tWmbCCV3
         eBk1x7YebVoVdxnjMMmdayavzkHUg9WX+rKBPstXxaiQCcX4jWSWiVghuKouyyjD6usi
         VfpfkaeNWMONA8dWmenRqkZcctLYnds9fRSBFTwT0vm2it9szuiBzJodNEoAkYBx9whi
         sbPg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531vJ3jylh53lqBlJR40vNBIkWZukUob9aViSY3kTlKcJY2bH8XP
	jQfx17fBPZlOdD+M6xDW3b8=
X-Google-Smtp-Source: ABdhPJxcYYd1yREqNOTIffAje6ngg62nb1EZD+nna7TFHX9f/rGqBNiBdhE9GQqNkZFwyfV+DgmfTA==
X-Received: by 2002:a05:6a00:bdb:b0:4f1:10fd:ab1b with SMTP id x27-20020a056a000bdb00b004f110fdab1bmr39077359pfu.6.1646319559402;
        Thu, 03 Mar 2022 06:59:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:180b:b0:4e1:9065:eaf1 with SMTP id
 y11-20020a056a00180b00b004e19065eaf1ls1228913pfa.7.gmail; Thu, 03 Mar 2022
 06:59:17 -0800 (PST)
X-Received: by 2002:a65:56cb:0:b0:378:82ed:d74 with SMTP id w11-20020a6556cb000000b0037882ed0d74mr19733567pgs.491.1646319557269;
        Thu, 03 Mar 2022 06:59:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646319557; cv=pass;
        d=google.com; s=arc-20160816;
        b=txtFh8DUnJ0pUAsHaMSd782YzSiZ/36SjCpkf0I837nh1Gzw/iN0tIU66BROEB2qMj
         V3v462Yi70KfKHWh2hgoqLPt1Uc46VGIUambXCiBMyiZh5v5bhVinQxmvsGYmwR372lK
         7MkwTSDJvq434g72p5UzA8E8IHOnRwu6dKj17F5CscnjwdDrTUbppItgQ1WSJ/oM9ds1
         Wcmg1sQxOpvj/MndLRIfQcjCeEzv+n9BghuXSl/OZeclzhjhQGcA5Mzmv8KKTj10BlOY
         X0jC3GXyB6oJMel1oDh3U+x4fKkrDhaOW1xYSGkNC28KiYMXzk/OrFBbE9CvQNJOOiVe
         PHOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=NdTOJvEPuVWz7NT6CQ3oHJj3AAdJcYuXcEu5GoiwbKU=;
        b=XTxGzz+54bHWA9ocpoMbh2j2Cn0eckiZ8bgRRQzucTTeGON704kiRoYrbRRBX8cF6p
         oy3WPsJx/eo/1cgpm8vM5Fz6CdfQ8oxrl8A6WwvaoR+NOxAwnV9VFIm89ZFOGpeY8OMO
         S81/883E/M4FJ9cvtt3Yl+Oyk9zKOa+aKiApIWOGzRcBXxZOGHbf05j27Ds1Nhjtytk3
         nrm+oy2yhmAqXg7zkG+KVwtqVWkvKlVG2rttfPgiYLwAUGLvs4HdBkw3kYX7XbvUnUQ4
         FHMdYSE0VZrSbyvMyK9LuS2NlvUzbqKTQA4a8aPW14QFXQFpogwqbnTLVPFGUdXM4w8A
         vK6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=k2A4DJsE;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=WuwEY2PI;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id om12-20020a17090b3a8c00b001bcc32e8ebesi65108pjb.2.2022.03.03.06.59.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Mar 2022 06:59:17 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 223C094w028870;
	Thu, 3 Mar 2022 14:59:16 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3eh14c1376-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Mar 2022 14:59:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 223Eu7aO164498;
	Thu, 3 Mar 2022 14:59:14 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
	by userp3030.oracle.com with ESMTP id 3ef9b3k7yc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 03 Mar 2022 14:59:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGDuo4xppngLzfmyrBY3RtbpHfqwbOJBLmmxNViiNiiCfr/9wDuX3cREPE1v//2V6In9CYdp9Sieq90H+s3pOOO2Kg6ObBll6hyOpeJNfB8TPc20BIEIh7F89+VcmMoqsyRRtHr4aAa/0dr535EyWh+0/9GHUvWU3d6LU1b8UiwL7alnNDvYGmy9l1gF1b8WQ9RBnJdweFeJUdwlkreM4x+MvZwKVkS4jjUmUS2BO17o6DSsjRXl3eGMnHDJPs8w9OtLe8XvsPfiaJSugf3nBxx7u2E2Hq/iHL2G0b88fS022B6p4gnPLJUdNIuwQbECEHKdJHLExLEYnF9F4pPxHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdTOJvEPuVWz7NT6CQ3oHJj3AAdJcYuXcEu5GoiwbKU=;
 b=J/s60wyLMX4vEfk0lgvpRr7QyfooYiStB4hG67Gm8Z6PATPvFEs4xGjaa9umXC4M5DdAgBA8axhN89Nq9wTenhl+NtPx4rrlq1kGS1nCxidYxmvdiSCS6euYyjX4meHqN+rJQb3C11w/cM36Yz9sw5HDSqkOy2u5/EaHZpkX56Rf2lbSPELR1xhrG0Bvv+a7F8nvl9rvgLw34QvRhUIPBcrBaoJ+cArs5KQS6YxF3cTLK2rsN3s2/FLz87cM1E/xutQshBDeJAphQ3yVOiyMTcBBd9rDYTbD935ccJToWw9kgyiet+Pv2IS+MAjU+zIUnt0VsUDqX77A2WPE/dtygQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DM6PR10MB2811.namprd10.prod.outlook.com (2603:10b6:5:61::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Thu, 3 Mar 2022 14:59:08 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.015; Thu, 3 Mar 2022
 14:59:08 +0000
Message-ID: <85a64450-99c8-268d-1ac7-86e70cbb3562@oracle.com>
Date: Thu, 3 Mar 2022 08:59:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 2/2] iscsi_tcp: Check if tcp_conn is valid in
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
        linfeilong@huawei.com
References: <20220304025608.1874516-1-haowenchao@huawei.com>
 <20220304025608.1874516-2-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220304025608.1874516-2-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM5PR07CA0083.namprd07.prod.outlook.com
 (2603:10b6:4:ad::48) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d8a0adc-e33c-4519-dbf6-08d9fd265e69
X-MS-TrafficTypeDiagnostic: DM6PR10MB2811:EE_
X-Microsoft-Antispam-PRVS: <DM6PR10MB281172971BDE0C13CC3B3F4BF1049@DM6PR10MB2811.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I/18VjN8mSy1R5sEZzUJsGJWFzb2EGhzastWLlxL0M+XWlkT5I6MNOCLk3DYNvIj+/Zas5M/WwWuRnciwVjer4+Cf4sgy/o0xwdDTY06WneDEhQjUh7oaC+mk8ON6EVat7oZatJoTIQU6RQCTHduWUe0RmYmzW1cUrHkgjzcXNp0juMkRERZR+wMEutl1rA7OBvOGSYvGe5OBoE2n8zk3O4LxoHGAMx5y+AljzG2EJH3FvK4fPIMzxIXbfi9YdOB7GAFNgBYurWaTaJb/iCahLC5bdM93KcH4F7Je6XkAykujudTpUGns9Ly8LBttMT2EoNKPE9KXDxm2WWASFNbL5L5OHBk7T8Kd5Cq3JvOb6anW7nHguANEl7bD9EhQdJ7ROzHA4D4KE3Jl/NLytKuTgu1r9FbFgrKiK20JDp0VWWt26fZ7taBJteoQAGwnw2Hbz88JTXTteN3dgZzkWjm0CxVUU1EEH1rDbPUppayIZnl73ljq6QxN2ow4PMMLP7jpcXPWKjEacHHYVJn5IO3AXgvAegtV2XNg7mTlJjfILZC9zAcSYoGbbnbrQyCVxF1KoWZaUDxOXFg888bZdgJzuiXoA6Dim0quR9+IKqM4dnTPh4Bzc7tEbcT7jEqR9DZX5RvrYWsjKY/+81ZpCZbdYNcnvjdRU/0pBB7XMdF0vGnOGcbpoTkFJLKmEmhlyhohUzDV+8+qSEWzAj3PYBjiTkjVOJNP3qBbvCPc/chi/A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(110136005)(31686004)(316002)(83380400001)(8936002)(86362001)(6486002)(54906003)(36756003)(31696002)(26005)(186003)(7416002)(6506007)(2616005)(5660300002)(38100700002)(66946007)(4326008)(508600001)(66476007)(66556008)(8676002)(2906002)(53546011)(6512007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2V3S2l6eTJXKzZHMXBuVTdqcWw5NGVIWFBwSWhkb2ptdWwrVjdFZERrWk1I?=
 =?utf-8?B?NE9KOGI2bDNtOFVsRzVJU3VESGRoWDhpZW9OZ093WDl1b2tRcStNVmVUTXQz?=
 =?utf-8?B?d2FmVmVFS2cxUnhuejd2WVFBL3FjYTNEWkVyVkVkbTd3cUg3Nng0VDB6M05p?=
 =?utf-8?B?OWV1RWpxVXRZWC9wK21JTC9vSzhlNlBUeXZOUUdsd0VVQXF4cXdDdS81L2ZM?=
 =?utf-8?B?TGdBUXNsbmJ5M1V2RU9qb0E1OUprQnN6NUtocWlIR2xrK2NxVm9yQkd4R0cv?=
 =?utf-8?B?eldQUS9SV2huSjBRMTZkZG1obTlGeUgwOUJqTllPOWwwcGZSeW1OMnRCb3My?=
 =?utf-8?B?VHhTTGlwcGF6dVNzV1l6S1o0cklYKzlRaENMaU5XZFkyV1JsOFlhWDEyMUd1?=
 =?utf-8?B?d3pXWjVLWkVOczJaNDI5dUpXL29BaEgyZGJ1RVdOZFFsQmpxbWo4T1hXb3lx?=
 =?utf-8?B?Y3J1N1c4Ri9odkFjdy95YzlRQVhDVHFBQUVFdWN6bXpYbDU4ZE5jcEsybHBa?=
 =?utf-8?B?clVIOWViVm1iVU9mNnRxL1o2NHdTL00vd29sNHZjSzUvSEdtT2tIbGFnTmti?=
 =?utf-8?B?UWR6UDV0SzBCcnE4T1JYOWZHSXNYUjFaSWNLWk90Q1N5RUpCTnZnVGVEL1VI?=
 =?utf-8?B?QmswUUJacTZRMm9YM2locStZMWsyaFVQWmtLbStyVjRIczJrV2pCdGx3cUt5?=
 =?utf-8?B?dFk3bXVLN1RrdkFoR1IvQTZ3T2lhRk1RaUpCRmZsMTdjZ3pScldraVhreDdz?=
 =?utf-8?B?TkVxL1pZeVJ0OHo1Wkt2RVRLbG42Q0dESTJ4V3MydU1sbzZCNTZrRUNZQlVx?=
 =?utf-8?B?OFJQOVFjZWpRWG9MNnVTRzZ2WWhBWExwdFFaVlhvUmdsYjhEUHY4TUZ4YUVk?=
 =?utf-8?B?bzZndVJ2M0ZPb2pZQzZRcVQrWXpNK2pzVWpJeEFXNWt4b2dpSHZidWt1M1lD?=
 =?utf-8?B?dkQzdnVGTEhFQ0JzaWJITmlOSzk5bTRidGxXRVp1VUllOU1KbzhabUJOOGFJ?=
 =?utf-8?B?RVV2dHpDY0FaeEVNZFVxVHMyK1lyZlp0Nm4wQnpNTHMxZjVRWnhkWTczT2kx?=
 =?utf-8?B?SWdLbVpqcTY1bVVVRFZKbWp1YVY4a2Jpd0VmaXN4RzFqcVFGWEhGTXZ1dVNI?=
 =?utf-8?B?eWJMZ1JaSGdmMHVvcWtXUExSYUhERHR1bm95K2FSb2d2aE4yY1hXdGd1elV2?=
 =?utf-8?B?TUR4bnJNa1crUkZ3WTJSekFzbG5TRU1lR3ZpTy9OVklQQUozZEkveXpZUFl5?=
 =?utf-8?B?b2QvaUhyQi9uVlkvQXU3MzZjMUdybWlwS0VCUVh4aGF3UVh5L25VTWZFY2lH?=
 =?utf-8?B?UG5jd3JRRlJ2Z1QwZXlsUzZSQkIxOG1TMGhoMGNBOGZEUnVxOEtiMjhOYUth?=
 =?utf-8?B?VW1kN2N5QUd2Wm55aGxCOXdTVC9qWnVZdlF4UEFNWjJROHMyYWVSNWNHcm9y?=
 =?utf-8?B?MnJXOEhEOHNBdE5kc3RJTndHUEdtdUFCdFRvVEJ2WElzN0F3TktJY0xUY1lC?=
 =?utf-8?B?OThXZXlVNlRTbG9rYVVMUEYxWFR6Qkcra1JZQUtVWUtBTnNoWEFzL2tBeG9U?=
 =?utf-8?B?ekNxVWIrbXFjcGtZYkJaSy93QXNQNmhCR1Q3VzdMM3NHTnpBZFp0YkFyWSty?=
 =?utf-8?B?OWhBOXZPRGhDN0lTdE9odG9nd1VKbENZYk13UE5KclQ4WjF2Q1FueExNTEJX?=
 =?utf-8?B?RTB3V0QvaHFjdU1QeFo1YkxwRnlxa1VlcGQ1QVlRdVlWWUY2ZlhHL0ltaUxW?=
 =?utf-8?B?UGhmUjh6a01FUmtUdGhBbGJ0R3Z3UGRXNW13Z0l6OG5GQzJ4RUN1TEpveDlY?=
 =?utf-8?B?MHFFc25ZT1Z3RS9oemFGd0pUOFMxczEwUVZlQU5MZEREM2h0dEJLdDdFU1FB?=
 =?utf-8?B?YjJ0TjBYdlZ2QTdpeFBiekJXYStkRmlxdGl2UCtlM2UrMDZqaitYbTdHamxM?=
 =?utf-8?B?MnI0K0NIWHZ0TUw1d2ltOUpSOTlxOEdreUYxQjRaUVFnUXBBa01PajUvQjQx?=
 =?utf-8?B?alNRRnE5dFV2aWJwV1BMQ3Z6cnZ6UkROQzBBVmdwOHowRW83LzBQb05WY0Y1?=
 =?utf-8?B?MU0wRnhSRDJ3dmF0SDRXQ2IwdGhZWEpXbFBwcERYQnpaSm9qSHg1VjhIUEZy?=
 =?utf-8?B?TC83L0pFY1B0YlY1MVZSU3BYdjdFYWhVL2pMcG8zMkRGK2swdklEaTlObVBJ?=
 =?utf-8?B?Nlo5YSt5VUpnTHpOY0ZSMTd6djJNTHhQWVRDMmU4S2FNSUlaMjZPMW9IRm1z?=
 =?utf-8?B?dUZTNUwvdTV0cXpJdk42VnlQS093PT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d8a0adc-e33c-4519-dbf6-08d9fd265e69
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2022 14:59:08.6560
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pa8ucy6G4b2A+xAutUytPd3Beoc7AdcHmMbyeEg5NZPrY9v84EM70u+Ms1s89B17Tj/JkOZq5/sM+vIdQMa9Cj7Pdjxo1jtiOaHhBbm36L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB2811
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10274 signatures=686787
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2203030072
X-Proofpoint-GUID: QBmCLm0Op-ixg7FgvjCo84tk_Bq9UHIf
X-Proofpoint-ORIG-GUID: QBmCLm0Op-ixg7FgvjCo84tk_Bq9UHIf
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=k2A4DJsE;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=WuwEY2PI;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/3/22 8:56 PM, Wenchao Hao wrote:
> iscsi_create_conn() would add newly alloced iscsi_cls_conn to connlist,
> it means when userspace sends ISCSI_UEVENT_SET_PARAM, iscsi_conn_lookup()
> would found this iscsi_cls_conn and call the set_param callback which is
> iscsi_sw_tcp_conn_set_param(). While the iscsi_conn's dd_data might not
> been initialized.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index 14db224486be..a42449df6156 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -716,13 +716,17 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
>  {
>  	struct iscsi_conn *conn = cls_conn->dd_data;
>  	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
> -	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
> +	struct iscsi_sw_tcp_conn *tcp_sw_conn;
>  
>  	switch(param) {
>  	case ISCSI_PARAM_HDRDGST_EN:
>  		iscsi_set_param(cls_conn, param, buf, buflen);
>  		break;
>  	case ISCSI_PARAM_DATADGST_EN:
> +		if (!tcp_conn || !tcp_conn->dd_data)
> +			return -ENOTCONN;
> +
> +		tcp_sw_conn = tcp_conn->dd_data;
>  		iscsi_set_param(cls_conn, param, buf, buflen);
>  		tcp_sw_conn->sendpage = conn->datadgst_en ?
>  			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;

Is this something you hit or from code review?

We have those state checks:

if ((conn->state == ISCSI_CONN_BOUND) ||
    (conn->state == ISCSI_CONN_UP)) {
	err = transport->set_param(conn, ev->u.set_param.param,

so we don't call set_param until after we have bound the
connection which will be after ISCSI_UEVENT_CREATE_CONN has returned.

Also for this specific bug iscsi_if_recv_msg is called with the
rx_queue_mutex, so set_param can only be called after the
ISCSI_UEVENT_CREATE_CONN cmd has returned.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85a64450-99c8-268d-1ac7-86e70cbb3562%40oracle.com.
