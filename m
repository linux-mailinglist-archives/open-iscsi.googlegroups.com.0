Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBAHL56RAMGQEOXTFEDQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3556FE498
	for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 21:50:27 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id d9443c01a7336-1aae6179e68sf46466745ad.2
        for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 12:50:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683748226; cv=pass;
        d=google.com; s=arc-20160816;
        b=jEz4koeFWin+8ikKLzQs1jp8t+jyt6rwoAG4EJo4FXrwOi1EwEHlY/1xI/iZDIz3kZ
         ZjJgexrN+ZeyqEjTsCGi/n4lDiPdgLgMbEUEFkTle7l168IUUy/6MsuTEKswoprMhT3P
         eQq9IrFB5fedlIb4KACMgKMWeTc3LIhSas6Fwpu1J3+Ioku0D5oJr90JjDpxpuncUD2m
         /KF7SQfrMc0xDxbQkwBzHdvuy/X5QGttbkWg0TU8EDsX/BHgt9hXjGNyNTbwNkqHEGZi
         Lb/PBw29lv7wcXUy8i2goztUBr/T96hOjlQrW/cBA5KaJeGjl2DjwS7QNVgMtNzW93QK
         epzA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=iShn4ILlblv8LdJtTqThQellVWNOPmfchcqcNHxtt6k=;
        b=eu7mGcn3C/4WBYRr7+8S3B9NpLzIZ9OMs+SScYrukMYJABRI8eerVVd+xEXb7qKsOU
         xYVsaeVOAfxazwhiMMR+O2lokXkf3cgSFNUsszjN/SrU8+fPLr8A6adGznEb5Gpct42r
         CjYPzuPmXG/bgd6HzBIZcjXBZKu/f7MNbiXBN5Xs9Vwb1YmCiBhmaXm//zOjpI/SDXc9
         wPWIq0zZBkLBYUqDz4qP1WZck3zqA02mGW1HoJ42fW5NsyAdbNob/cZM4AtA7JFYMzgO
         AUS3ljziQ40fvG0A0fHgFDTNZhmFTP5EsJM93Ii9Ugf9i3UwJZUhnmOU/wW4x3Z2CT1P
         6B8Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=cdrOrfUP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=k1iryL2p;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683748226; x=1686340226;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iShn4ILlblv8LdJtTqThQellVWNOPmfchcqcNHxtt6k=;
        b=KybEWUQowbmtSyl6z8vc+OIFkm5957uja54K+By/8pGrqbWdr7UzsxpqvDBf+RsLDK
         GkbmgUtDtaXAv2z2gzh8RRmqsWowtL5utL1dOoc6OsPINRG9KCzZ1yBvGtu0sM9gUt1e
         8FFKWBNS/60glOWzw/x6WklTo8MHwzF/IOm39RPBAkEoWc4vYqd5KHdt5ajRRwKnDu6q
         RZFbCwBDBHkpCUeSyAJ6DaMZBBdwAYZ8rOvthOTqczAQfzuTerI2vmYqHFFbze9d1s2+
         XqlWTSqRVSVZRCy1KTMLAjuikuLsMN7i7sDp5EvlHHEIUEQzp21xmiZLHlD1CbyeV//O
         BKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683748226; x=1686340226;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iShn4ILlblv8LdJtTqThQellVWNOPmfchcqcNHxtt6k=;
        b=gJ2WW3MO6FJ5atLU7gHCAsCLn2aTZzYa+mIN5KxlffMQtZDJXdRel5oKvXjugNFO+E
         xCA+WA3xeSn5JIrVhJLIlAVif6eRnUA7mSDCAvBMG9d1D19HGhQ/wrka5LkKkAQog24m
         oytV8o2ZljIikSKS4uCaymzfZxn6RuWSIarUTX/Q5afUhtS27BBI1a123Uz0yzppWuGb
         HnEQf4yFDR9xirgyKNqKFYAKJOfTaJ57Bc35gq5yxajCA0Zf61PTmowr4aOYZshNL84N
         DpYIXbtguKhUZyXvKtwEZyJ5oAAoqYRkMfrmCqPxN+6/twqMmMf/RkI0UPSXkgqeUMin
         tLtA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDwdIjKJhN0jltuYIIEmxNBmIddliWX6MHfBIYYpuZTZXhjDfiMK
	Z4AUVJhR7ST9E4ZoXPwl50U=
X-Google-Smtp-Source: ACHHUZ6sJXqFPA7z94d2cnx75OLxSigzXqS33sXosPsbRV/SAkCRAzEI/lXfVEjYmy7V2OtfDuTwRw==
X-Received: by 2002:a17:902:a50b:b0:1ab:1972:6d1b with SMTP id s11-20020a170902a50b00b001ab19726d1bmr6691028plq.3.1683748226064;
        Wed, 10 May 2023 12:50:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:987:b0:62e:119a:ee5f with SMTP id
 u7-20020a056a00098700b0062e119aee5fls5785118pfg.11.-pod-prod-gmail; Wed, 10
 May 2023 12:50:24 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d12:b0:624:2e60:f21e with SMTP id fa18-20020a056a002d1200b006242e60f21emr27137527pfb.29.1683748223964;
        Wed, 10 May 2023 12:50:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683748223; cv=pass;
        d=google.com; s=arc-20160816;
        b=pChZMDFTnbirqceyKFgEOyJwGZmIh+Hhe6JqZ5o1xJZ0AUhkbbl1IGqwlFlQhDmosP
         e7dDE7s/HRK1jr2sWojyT/HwXcH65F+mL3zAgVUiZUnRdBnF6nWoxKSp5aDR0bfLwYgh
         YbEK0KBpA1mGBptsBIwejbCOlGU7liVgn46dJegVjU/9OWr8wlMf6CnwRpwAzEE1wWGw
         B7FCFLDtBjLAyiis3GAZAy1KydS1GO/I091v9uYIeoELTrJJBZM+jlZYis0Nwk5JxT9c
         ObCvwky21k8xlFMd+PvPBBVR5ZZ7X68P7TQD2X263zWIDPAgwKPR+r79OmEY7exSdPkg
         EfZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=DG6L26HrSTQpPu4uHjwRdanrXjK8w4VWvYbwI4QyjOw=;
        b=C240LV1GLr4XTqXg3qxKOX5xXhS1QqY5+ZcThqihzQxsOywueBCQQW7FWC/d1jqgjG
         dFojESWKDQn2SypR86o+sHhMX7BCFjJDAovuRsuolOlFgIW1mpNgEPqxQ2R2Gf3RVnAv
         BJhRzgve/5w4MuUlr+Pf0a/LlDoAvGHYEmCJF6WEXPdzDXXM0Hpv4ov24g7ummoB1b1D
         GzyGGLhOPIcGKd7Bp0h7tE6k+OcMy1oZok/I2cdgLMS+LU6tBTwm0nGetKcIl6boy04W
         2K3xmj9W8jShAZ6dd4FUNs4HK6WMzLz7XdkWC6qNhU068TxtYCkKSVIuo0Up45rHOpIN
         NuYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=cdrOrfUP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=k1iryL2p;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id fb3-20020a056a002d8300b0064124bbf410si550277pfb.5.2023.05.10.12.50.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2023 12:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADwqJa005122;
	Wed, 10 May 2023 19:50:23 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf7775fx1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:50:22 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34AIPSe8018200;
	Wed, 10 May 2023 19:50:22 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2173.outbound.protection.outlook.com [104.47.56.173])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3qf77hu2yy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:50:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nZbWKUPVLlXqGoxsaaS9HfTLR+DRUgqkZNAvslBmikBpBeYUw2R7niHb52g+4Wm3q+j5yzlfCMxx1nyLNC4aSTwcnvBBRJL2gubbU5I51cC56gZxwxm7NI71GtkplJD6Ts6WFSgHg+4pVbyTMnAIFwAX8+/Z9K2H2e9OKGW6qeg/PTPuTkAp8pJSw3DKmaPACeRvtOI854XEMB5vjWg/ygwhI05vKOWsh5KjSq0yQi/OJWqENhaKyGy+jNWZ7vyIgaqcHCuMjCYiwCoPT82joe0pAEW6YqlKEynD9C1wTV8WQ3kzMn+z+OPv+dxu32WLh8/vIGbQWEaKDkT+yhcjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DG6L26HrSTQpPu4uHjwRdanrXjK8w4VWvYbwI4QyjOw=;
 b=mC7sHs8pLD/xfGNmlOHQ3ZOnYUJZKs8pZtoy4c1EmKYRpFQY/q6Kww2szuwTQUjh1eHVmXS2Pid95xbn7yRsuit/95Xe8mKM/zSFvHqvWU9yv0wIm2CMiEyaeV+Y22iDtvM4UzY1ewj1OBgrxd18Q1FyW/ldjzOOhy97KG40Xmgp69xh5d3bTl8PhcfwKZ0AxGT2P9BgtWggqCuTrgTj0S9jE3DXvWd5gC4tNalpTLT8IUPojQMe5pbfRipxplwIN7qY6RmNXAwJP0mj13b/ey1q03wAf/b+7UWcuinxEv6YXMTNtF2qX4OKN/bo3dUTGSW/mXH6ZEYU+GwCiBReDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB6051.namprd10.prod.outlook.com (2603:10b6:208:388::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Wed, 10 May
 2023 19:50:17 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.020; Wed, 10 May
 2023 19:50:17 +0000
Message-ID: <3604c700-3106-dfc6-d39b-5583775be029@oracle.com>
Date: Wed, 10 May 2023 12:50:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH 03/11] iscsi: sysfs filtering by network namespace
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
 <20230506232930.195451-4-cleech@redhat.com>
From: michael.christie@oracle.com
In-Reply-To: <20230506232930.195451-4-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BY3PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::25) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: fb48c46e-1812-41b2-ad15-08db518fc77e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P35oOiN4teTcYyhwDHmUoj5ciGr8uFoGYo+ww+wZQ54ie0NFuR2IfwZuyiCPlaReU3/0iQ2El7L6rhWVLaCPoUxp+M1OmsbSccRUW3iDFsMo+/JsbMO8RoC9/VZvLKhylUFWenFzBrDe8xLGJxUdN4Vx7Aa0pchho8tEe9Okpf1gzdSQ7U7lg85wOuwTab/rpwDPbL6+iH8MzrZaoCA5Tja+Zb47Eq50Sa41gTRgbtgyOXVH1/k2sUklbmvczuVWe7TJgE9rRfYW/bCQS8kJzqRTjjMePYRstVFvKaaGVmCuscGAqzgS+nNyrbwEJbM653xGV0mryTzlHfn4C0xGY3vwhV4vaHDQBH5jev4CwVQ7TIRByNmx8wmsewfW9JB9mmMRCzVwWlVwL9Yu7QW6lwnJjXjrynaBju8Yam1oAjMdKLWaBHwErneft3pAQ1ALS1ti7NleBDgC5yKJ5XCiJ95KHXeImuSdttq0OAR8/XtQYYA6VrpYxLkbUiEjTEkQ9bI5ADYs1eQaRcNVcDNfxVrLwDY8kxFrjBDfNHXOBq9Wycnz+iiiu6No4Ot1rxj3eNaDx112pIUG19viFx2caKA+uLw7GGwLLx41Oy8kh0vU7aOY+uT5Jj2XVXZYEUgx
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(136003)(39860400002)(346002)(366004)(451199021)(31686004)(6666004)(66556008)(6486002)(110136005)(38100700002)(66946007)(2616005)(66476007)(316002)(31696002)(41300700001)(86362001)(8676002)(8936002)(6506007)(478600001)(53546011)(26005)(5660300002)(9686003)(6512007)(4744005)(2906002)(36756003)(186003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTdPOVovcTRFYkczdS9yeTVsVXByc2hzZmlNWGprOFVYVHRFNnhSOXJmSWM1?=
 =?utf-8?B?NTd3b3BhRjdYczUyaW5FNjA1VEE5aUtPblltcnZoRHdmNFBJYzZGb3N5aHRo?=
 =?utf-8?B?bU5QTS8rQk1sSWFVSEZ1eWY3alJwN0dHTEhheTRncjhsZG5KQ0Z0OGIwdC9w?=
 =?utf-8?B?N0NhcXdrV054ZE1xMXV3UHZoZGlGNmNSR0RSaHBYWTZ3amRRMUcyOU9Na2JZ?=
 =?utf-8?B?dWZJT1ExeE92bHE4bDNWbEY4RnVJUGFIeWpsS3haYjJJZXZpSHJOajc3OVVJ?=
 =?utf-8?B?WWJwWmlBNytBZit3RGtQYzUrVnpleXJaQ0phVktIRkNkaFNMZVpzdnBHeDJo?=
 =?utf-8?B?aWkxdm1QdWZsOVpwUFBIZ0ZnTTNEQVJBUlNlSFlHYkZFc3JqZGh2TEYvM0VE?=
 =?utf-8?B?ZzI5ZFF1MGJNZ0pZVkVzSFViMUgvVnNpem50Z2JPOUFPbDI5VDdOaTVnSVlL?=
 =?utf-8?B?Smk5TVAyRlNpSUFKRHpTdTdCSFJMc3NjRUZJQm5pM1MvZEZ0NGdyTDRXTi9G?=
 =?utf-8?B?WHNBZUp1ZlRLWUN2cHhlK0hCZjZsOFlrVWIvaDBlbWZCT0FYOVhYOVJVZ1ZK?=
 =?utf-8?B?WVI2amtmaFVRd29mY1FURFl3VzBDazd1dFdRUW15UjQzdU85aVVjMk1EaGx4?=
 =?utf-8?B?L0ZJcjQyWFgzY21GclBsOU1ld3JiK0NERjZsbGpCczY2RXJ3QmlQWUthcUxR?=
 =?utf-8?B?b1FaUXR2aHlZS0FVaGRqWGNyVXVReUlwcTBESjQrN2VQMFZ1YlUrTnZkSlJj?=
 =?utf-8?B?U0dYTVRxV090UVFLUlFQZUd3MW13elVXbUJadFByVjNUYkZyV2xCOCtOSm5G?=
 =?utf-8?B?bHFNaSs2ajRVc0U2Wk1wSFdJekdCWFRjRGlpSUh2UW9EeUFQQWpzMGpxdWZ5?=
 =?utf-8?B?ckl6VjhNbTFrU1hmNHFNT1R0ditWb25VbTBVaW4xdzZRU0g2QnBzTWtmOE1l?=
 =?utf-8?B?eGl6OXN6WHFiQysrdmtCYSsrNjhFYXc3Y0Y4UjBYc1ByakIxaTZYcEpQWWpQ?=
 =?utf-8?B?QkRtSlVhdDAzczlBdFFKL0llNno1eVpzRmh5RTJTWGRWVSszV0o1Y1VrOGVR?=
 =?utf-8?B?Z1VSUGFwUWhCOHRXalBNZzdMREs2MkdJeHhLN1pQV3pHRStxbFhhSnJja0p5?=
 =?utf-8?B?WlZHVUNZUnhReEZBSlMrVjExSTJXL0FQc0NWYnNZaHZGSEI2L2FZdFRPeHp3?=
 =?utf-8?B?Mjd4VzRFU2pMUWRJRmpIS0tITGpPRlFDbVJqU3ppT282aHVuSU4yNDMreEdE?=
 =?utf-8?B?YmFNdjM4cmEweTFZM25xdm1SdVF2WW1zNTJhN0Y3YmRXYTN0RFd0cytqRG0x?=
 =?utf-8?B?cGQ3UGlDNTVlNm1wZ3pFRGp0aDdvVGJVWjBMbjZWdmEvZHk3NmVTUEhhMVc3?=
 =?utf-8?B?VUdNaldKbjBkN1JmN3ArSnBrMWo5cUZ0VTVRcDBVQUFsSENaWjVoWFhwanpL?=
 =?utf-8?B?Z3VMTW9QcUNDdml6SFVva3RxZ1h5dHdDbTFLSnVwVkx1Uzl5R3lDRERWZ3VK?=
 =?utf-8?B?THAyZDhuUElFbk8rS25BRGVmR1JoZi95bGRXbDBKbnc0QVNBUFplNnpmbWkr?=
 =?utf-8?B?Yy9PS241dVlpWDJkSXp6cWsxSTBkZlAxWkNidTM1VFFuTzJIK3FnRlJPTU9Z?=
 =?utf-8?B?VFBlSzRSaFE0SXJXWUx2YitPY1hZcEcyZlVwVXlkY0c4VlhGQlhsYzhkVStH?=
 =?utf-8?B?NHVRQmYydm02V0xEb1NlWUFFSWYyVEpuVmV3N1JkQVp6SzlTUXhYOWQ5S1BY?=
 =?utf-8?B?SlJhSER3RGVhTlE1VE1hWG5OYWZFSll2MTQ4Wm53cVN1SjR3M0FzeFZ4aEZ5?=
 =?utf-8?B?N0JFWjFsdUx5T0l6YzZCaHc4eVVVbzFhK09pNkFwajJYdVFLV1NCaURqUXVQ?=
 =?utf-8?B?d2RhWDZWQW5DZklFczVJQ2ZYeTRzczhGS2M1NzZ0SmtIV1lPalZlWGwyRlp6?=
 =?utf-8?B?UkQrclZvdW9FTlZwalFvcUNqcTcyVDVkRmZ6RXJ2YVVJNzhUdmEyZTRHemYy?=
 =?utf-8?B?d1ZXVWlIdVMvQXoxTW8zTkZsZzYwZjNCZFpNckpZWmE1U3ltMG54ODkvNU00?=
 =?utf-8?B?bW9MTHNnMFEwdmo5VHprMXhzR1liT3NJR3RtSFcrTlNTSHNKMG1qaTIwMXZs?=
 =?utf-8?B?VktHdE9IdS9JeCt6YUkrL3NzdzBqTDR2bCtyTGxpME1lbTRhRjdMcXdwTkJ6?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: +WTj85P1KOk5ZUyviDKtudywpCF2+sIDa+2X3MlbuK9uM6ttsbjxpQ3VJ7er1IZbsY6JeTHaTVOgGJKyfw5kVnYSjMUJjFcZJgn1R0Xm9mmQ5lBlGgqY2k3r3ZGlRtt5AwotqnRWfaYI4dQDOlHY6wpkZ2Go//upDFz+UuvwBt952Og6vpistGTaKC6FN99b0P/eyaR0IvtLt7/Pv3PY/7slQftUwh83CTXqwG8XedgHC//CUm9zbsecrDhgmWmdnyZFHRcnxqocgs0XWDBhOg1MnrXNLA6hs2KiJz8pESDg389Eee8ARHd6NgJ3fHJu+U1uWUEvl0R56etEggguh4geprP1E2d9pKfoFE+7S/YdNXVd03o/+r6NgRkOx1o887YlGchMWg+iKNGRCMv4HXFayIzGusKB0aoUkTaFNgTARS9/KnP2+qf51Ta5h5m4VNGzkalS2sJwTpfVwyGFHy0lGTc9RA3pBv3u3bo4UBF0vLYQIJqX1fAuJ6+0oloyXEyXQUhHHfLofLEyuuIKOkpW+hOALxTUq34sWns7PZINTU0F5i+vt0BRLf12NANC0p5jYIw5fKoLs3LRfIj2sDySqaxDoTlF1D9ITH2G6CPicJPNYZocLQAyULa+4DoH49u5jvj5a/HcQnP2Sn35fjVYFZd45wvye6tibgVAM5LMqR/gw6Mso7hzgqyl+uVdOdbUD+vQfAja9zDB5FDVoVLSDIaBhkXEqhI9reXrc8GwkowwL72we9kexzC6tw8UgQTnfRx49950dgH/X0UqarBlY+zBWcRRIk0A4pliS8/qoDeMivO1sKn+C6OXjUzJc2lgOVt0fw4sGFdJtR4Xy6stFQRZ9RXjU8NFlhtV8zg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb48c46e-1812-41b2-ad15-08db518fc77e
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 19:50:17.4410
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gpW7XCaFW7mICDE3RamNqJZeHy0ZoMQkd0TI5A30+9r7819pqLiqantxhzlfEYBL/hg6z0rhBomB2seEdSm2IsvSrH1B1fJy++8q404/Zzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6051
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=965 malwarescore=0
 adultscore=0 spamscore=0 mlxscore=0 phishscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100161
X-Proofpoint-GUID: vbv89t6G5umT7DSLCFTEsmCcAdp6DoRi
X-Proofpoint-ORIG-GUID: vbv89t6G5umT7DSLCFTEsmCcAdp6DoRi
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=cdrOrfUP;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=k1iryL2p;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/6/23 4:29 PM, Chris Leech wrote:
> +#define DECLARE_TRANSPORT_CLASS_NS(cls, nm, su, rm, cfg, ns, nslookup)	\
> +struct transport_class cls = {						\
> +	.class = {							\
> +		.name = nm,						\
> +		.ns_type = ns,						\
> +		.namespace = nslookup,					\
> +	},								\
> +	.setup = su,							\
> +	.remove = rm,							\
> +	.configure = cfg,						\
> +}

I think this would be in the transport class for others to use in the future
and or you want to name it differently so it doesn't clash with the future
transport class naming. Same as other places in the patch.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3604c700-3106-dfc6-d39b-5583775be029%40oracle.com.
