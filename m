Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBQO2TCIQMGQEXYZESYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEA94D03A5
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Mar 2022 17:05:25 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id md4-20020a17090b23c400b001bf675ff745sf2044378pjb.3
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Mar 2022 08:05:25 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646669123; cv=pass;
        d=google.com; s=arc-20160816;
        b=CJmYu7gbE1WAE7hrQnwEm3vtcF1epJItMTBT6/3F/rnGbj8S1pwkizro6lAUGvpR1n
         P5zV7tC4dIaT1gXk9Uc1FD8WSAhEAIpnDTZTTkc6I2FgDxUNrDP4NhSsV83ykn/xElgf
         SBGbooY5JccCoviOA3AqtVYb2qEU8+DD8meG0thYVTdSXIWfi6NPjbnxXtLGErZCnZv6
         VU9OPgZtytz+oQCO3M5tNUlnh8Fma+hIbEYLtZrTA1xmvRFOJzrVyzMghUFg/FAkeh40
         XiBmXVK+MinzoiuSSZujw/szsH48icmxK8lW0ng3PWlmxmInccBx09GgaTPiNDF8m+O6
         G2jw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=VDKthScI1nmP387KEI3hb3dYbLYDsEwgnNs8ODHgVS0=;
        b=AZS+fQbGxHQ5UVmEzkvPKpo1pqX4FBiVeZ7MmwrmY733X9wKecwt7VYLblmmN704bQ
         QqnEDvEPcPO8aJFA03/QMljsVhjV1xNkjliFU10/6BTDub2g1A3czQVL02hBSP46WKN9
         ojqvdHywCZa8Wxe+sFzAg6A+yLLyh5KRNmPoLUlxox9qe3ZWq6Ulot+m0vVl33PTBoDK
         yvfWUlCluY0mfC5O7eXuLn1/Nh4Z28IToXLQoJ2EKP/xsCrHxROZGdJkHBnIOtQ5oefy
         TcKjlJG/xf+k9WOjDkrqzCZyNHFSWeYXzmw9p/ARmBSP19CJbISekR7zdFcAbL6Lu1R2
         4fOA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=HisvFF3A;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="l0n/Af/K";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VDKthScI1nmP387KEI3hb3dYbLYDsEwgnNs8ODHgVS0=;
        b=i9xfANxsfyozVgGmJs4oA/lsjYAL9Cq/5i2bbn2L6qI5XVcfC8fVsgkB/aVUvSYdAM
         oTWCDV98kh44A9eBZJjESyZrdOjHdj5d/0oyYqQTj6bQQzgCzA6linGywxd/aoO84dE4
         IeO+KeX3GciONgrP83Vz+FfxfstwMF+mh3EahN7LJ+HjRASl6bmGztsvW6mXNUQ1UUWN
         oFh83bZlznziwv7fxIskYCwtrjsz71JyD9Qsn7wM34MwIR0qynigJqsSIYrvcitJxdb/
         7Mx//8GjB+Ibfrjv9szNQnHE2Bo3g8uvH9YYvtFxVSA+MLMmV27ygy3KLDjCIGPX4OUX
         TsPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VDKthScI1nmP387KEI3hb3dYbLYDsEwgnNs8ODHgVS0=;
        b=SOklM3kzQVhKIgDPwIYDfurPxaa27YZ6RRzIHRkPaCVRb6JMrAbgmn0IUP6PPCbxUT
         /DT/hrb5hxl8riM67oBOPDwkwKb91csUPharkM8ehbV/zjt/w6cZl0Q3lQbtJ2sSG2ae
         o0HONgXFxpO8YLOfqaBOEbRVvM5oAkdqKPZF2HcVUA6bextfY+kI/qN44eXLIHiCaZOe
         JSsOLPhHPrMeFSy3RqEgVSfbYqXcY7pVU1h8fdleirhxQK2VRCnuyJAt+iK2odDouJJJ
         iH/oEdu9R1fvsx0UmDPWFQDWFPvPYBvElLt6zoh7k2ugj+SAYOSiNq77MYQO/2/WHEor
         P28w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532Be8a8fungUqTL4SewL+A0ghVF8i6embAwM7EJfgRzo8MmE+9k
	SWGGot4akC04Gptp3ydep0c=
X-Google-Smtp-Source: ABdhPJwuz9ft2Hhki9WTlkFBew6xQBHJLC0r0htApwq/o4UbD7/MEUbBc4jgZdXiWpO9t9gaVaA7/w==
X-Received: by 2002:a17:90a:178f:b0:1bf:5f5a:728 with SMTP id q15-20020a17090a178f00b001bf5f5a0728mr6865455pja.171.1646669123650;
        Mon, 07 Mar 2022 08:05:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:3ecd:b0:1bf:65ff:cbd5 with SMTP id
 rm13-20020a17090b3ecd00b001bf65ffcbd5ls2562316pjb.0.canary-gmail; Mon, 07 Mar
 2022 08:05:21 -0800 (PST)
X-Received: by 2002:a17:90a:1d04:b0:1bc:98ca:5e6f with SMTP id c4-20020a17090a1d0400b001bc98ca5e6fmr26208668pjd.32.1646669121357;
        Mon, 07 Mar 2022 08:05:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646669121; cv=pass;
        d=google.com; s=arc-20160816;
        b=ws+a9kV8Qv0oyUuNC9ybAquUOKIMmTA1GIjNvc2wvVC7iCAtvPc51WoQe2esTW6hB/
         cgBLHIahhgb0kYRAXS+YkR+uaGcZMePeOTPHA9cSaoSfETszWD/eC22dBSFFK7YXclGN
         oyjbMFQ9LlNiJR7zpS4vWuB46D24fRAbOOL37BclrZg97PyM4fTbG+1+kAkLif70Y+fi
         qvyM8dwuzUAp63fU6a2MhAcoa7kgwUeYvlrw1nAnsWVstRMVl4A52j5vBu6vel/zsetO
         QUFXvhKiGqBI/umu4b/pU15ncfwez8l4v7BSopydSWH8wXm9vkkcQ75LpxRM2vfPKZ/8
         nimQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=GBrwI/hSvfPG9TxP/G7OhQjPG63OLbS3EzJRRpozggs=;
        b=YYDzaIa0DCV5bKJJvSfg0tIp3/Tg4vtnRz8RAUtOP1Y+O51+GwwUKyn6LR8lKjROCi
         /pXZAzpYd7pIdD39UEU4J0ewMpvD2lhfLeqoBCJoEy7pHHMPn/R1TQ73k3YU9jQrFDj9
         lJAePMBBSNUN/TMIQKk148yqKjqcOyd4XbSBd0uNJOL6R2gojuE7vauv9GatTQMa75nU
         2acrzh0spHxbgEc0VJiPuWi9W/QwXhVQT1u4w+ule44hBdoCUat2uEamiJaKgJLm80Tx
         KFV9/q39JB7AHBjBGRY0spfUtHU8tp45fbJsS9gxgJMxO7SAnAoV1odoAgHGTcBoG3MC
         hK+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=HisvFF3A;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="l0n/Af/K";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id c10-20020a170902848a00b0014eff4239c6si467302plo.3.2022.03.07.08.05.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 08:05:21 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 227EhPrU010128;
	Mon, 7 Mar 2022 16:05:20 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ekx9cc7q8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 07 Mar 2022 16:05:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 227G1W0U125436;
	Mon, 7 Mar 2022 16:05:19 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2106.outbound.protection.outlook.com [104.47.70.106])
	by aserp3030.oracle.com with ESMTP id 3ekwwb3uer-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 07 Mar 2022 16:05:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oa3TNAJXkxNRWvgg/WLP5lpOb7d4Kxf/2Og3vWuL8DznRxs0wohC/VgGb1xNZ2NLeAiTIRvxj07CWFHXlsuok6QYwzImtv/kaCrmbt74NmWBwHx3fKkbWCehFnyH4IBCjSU07xDmLIavMJfpUmPQuTeCHWolkFGNygUMkY/ewaJWAQyl7fVAD67keH/KbXtqsSb36duIEiPEvhNUdDSlKjjZbS5Z3ptRBWgczqBRsNTXTwqAMf5TEckXMxaUse1UWq4GBvTB+9otnRd99iM7a9GCQLWl9SYghM5NNFckZJ2Km2qaglHz4PfIKmfheEpsbgBOtL2MBC1Zs7+2o7VQVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBrwI/hSvfPG9TxP/G7OhQjPG63OLbS3EzJRRpozggs=;
 b=kWuMkbmIzxC+niLbKVns6pLdlUmuoop0aLclamu2o7F3LDM2CM5hbt4vg9pZE2mk1oP2UHLUCt+i2r95wYtZwu0Ra0ZMfMC0eC+8AK+2cQxrPWnAqHvlseAepUSGKUYXhKL561T1/GrxYGohF2FyY+aDWDkpRSbkqSaet4Qj5jHeT723X7zfDzUN9D3JuDHff5s23Ym4jDEO2ol65ZaT1RHK2EmkI/U98Hi+FybHY7ateNKq56QQt8AjBPAc55WSGVLoJQAsBChFSFlEfbIgPGL6m1HEqpEaoUtnVy3HRm6gsUNMUQJtl+Fy7o+gOGeZHJyhXfp/mtSH+kUhQqGQww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 DS7PR10MB5261.namprd10.prod.outlook.com (2603:10b6:5:3a0::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Mon, 7 Mar 2022 16:05:16 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 16:05:16 +0000
Message-ID: <c90dbaa1-199c-5430-7d0d-c91303f96fc8@oracle.com>
Date: Mon, 7 Mar 2022 10:05:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 1/2] scsi: iscsi: Add helper functions to alloc and add
 iscsi_cls_conn
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>
References: <20220308005654.2281343-1-haowenchao@huawei.com>
 <20220308005654.2281343-2-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220308005654.2281343-2-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DS7PR05CA0063.namprd05.prod.outlook.com
 (2603:10b6:8:57::19) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17f6f3bd-9a1a-4324-3bcd-08da00544527
X-MS-TrafficTypeDiagnostic: DS7PR10MB5261:EE_
X-Microsoft-Antispam-PRVS: <DS7PR10MB52615544B1ADA1A4C15C9C15F1089@DS7PR10MB5261.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MX8+Th3Xxp4gYH1MdZcFdEInKecxNSLZ7gk46oGAqrs+5Wi4JowRiAC9G9q7wEBjv9tfyi1BrJFB6//e687abdLPOYd5yXB6Kns0o3k/d0NDk+ixGnch/oNpmJmHtZHbtG+hsjGKFhmbA9hXQAOr+JLati6QF3oXTKfqIJCq4z1tnaxzQUvkkbVUGURhlR4VgQeD2nRUF34eD2BT44ynmREFOwmrKzjtL5NRuu0UOHtRrScJuHqfbOqKfGftUYCzdP+NVo5+nlQ1MAPDwx0GEkzYqEblhgZ59unF+EZpyBz2Nc4AKFiPaiC7S4tZqY4tfXFysxwOH1l5i9vG488qWGOaYdSm3YOlYupBOsr9vcRJ57Ts/GrOWnCCqN6Fu2Cx2PZzwpiYNXBCefaFA1SMeeGlXlz921sZGa4Jvca5uNDlP2PMRfG7JQcJBumvQxWk8LN12Q8wcI/wNKER+lxn4PNYohQHduP8tyxx7N8gQoiZJiMRZxX9k6SuEcbKhhJxbvt3I6zn99ItrbQCnvSeorJ7g97/85JOf2rmQiwt+FvlQn1SuztUFK8i0Gfdua2bjmSICZTGSN5HsSsMEVe4W7YfngfrtjZsEGyWUIQ8lNcK3ZeAuz+to/06U6g+0efcz5ntCuBTepLkk1a4gf+o3939rRqyqU1ekdUy6f2/5WC29a6InEwNJ0zcMHQcYHL5KKUmCZaqdyX/tB8ErLvvRurye7o40CCazTdKqDAlqsDwNQf5DErlbsV+tjj31Uj1
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(54906003)(6512007)(26005)(6506007)(53546011)(186003)(316002)(110136005)(38100700002)(2906002)(36756003)(2616005)(66476007)(66556008)(8676002)(4326008)(66946007)(5660300002)(31696002)(508600001)(6486002)(8936002)(86362001)(31686004)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDV3NGZzbFRQQkU2SzF4UlRwcVV2UEJsWjBHeDh2VGd2WFVUbXd2QnFUME5K?=
 =?utf-8?B?RmM1TmN4M3pzdkxIRGVpUzhVT0d6UTVwWjk3Q01OTGlRb0NEaHRBamtHVVZl?=
 =?utf-8?B?bFU0YW1nSHBzYmpqQXE4ZVBlZ0I0cDczVkpSbFFMWXkzWENySjNpQ1d4ZEs5?=
 =?utf-8?B?OXVQZDJYS0dNdUwxN3k3RFBJNTJUcUlOVHR2eXJPK2FkaGVvelZtQVB1RVVm?=
 =?utf-8?B?dlZocloxUGVYMDNzMExPOVc5Z0NqRm5MRGtqdWlBNm5kYVhFcUJYTVo4eTR1?=
 =?utf-8?B?TnhNNk5UUTlJYmNUYkIrbktITm5XTXNsSW16SVlQWkprelRuSnZjTzBYMkdo?=
 =?utf-8?B?NnJhVno2c0VmeEVBNERxSkxaNDJFcGdaMGxEWGFDMzE3YlBKaC9zZ2I3VDAy?=
 =?utf-8?B?WTk0L1RhQUF4b0ZGZlBzNHFoUmc4cllvZmJGdE5NRWRPT1VmZ1RIVTNudXRi?=
 =?utf-8?B?ODZjWGY1RFgyWUdLWDR2dUR1NkhCMTZERkh2TDg5ajZnUk5UM2ErQldrb0dE?=
 =?utf-8?B?aXlCd3pzSGdZVGIrNU5kTHRBcDVBSW82Vm9oTHBXL21tYzBSRlFqMmY0V0c5?=
 =?utf-8?B?WERhcytxcUoyMGdROGh6VklVMUp4WW1QekVhaU5jaUIyY0pGeVVpUi9EVjE5?=
 =?utf-8?B?Z2ZhZ0VpSXVOZWhsZUtJenZPZHU5ekROa2lFdUJSSElFbVZmL2haOTV6K3VO?=
 =?utf-8?B?ckpZZ09YMnJtamx5Ui8wKytwOHQ0aXhNZTFTTlZONzY3U21IaUljYUduS1l1?=
 =?utf-8?B?aWU3d1NwWXgwRkVwbUJGQ1hEL1ZmZXFCcjY3OWhqRjRvZDB6OW8rZm1hOUpG?=
 =?utf-8?B?azVBZGluRWZQcEtVeXlFSVFLalhHMHZMdmdaT0tReFp4R3BmS3MyQVhTMVdl?=
 =?utf-8?B?VnF3dkFIWUxGZGhoOVMzQlRoTHI5WGJCN3lNbXZlTHRjaDNxc0hUSjNCQWRI?=
 =?utf-8?B?algvL0xzUWlINWV6WVFBNi9LV1R6MUJpUW9TNlhHY0RkTHQ2TE0xU2NvMWhZ?=
 =?utf-8?B?NzJNY2RNbElkOUIwQVI1cWl0b2VDTmxtV0dBSXd5RjNndVI5MjYwN2swSGlQ?=
 =?utf-8?B?Q2ZWNDNjNkdpVDBQc1RQdUV1Kzh2OU1rMlZNemVRV1o1eDBOcjV2MG1VcG5B?=
 =?utf-8?B?Um14UVJSY2xmRUpTN0pzOTc0QkJrbzNBcXF3RDdueHY3R2swdStOZWNnOFBr?=
 =?utf-8?B?Uno4OEZ3UmgxNFJCQ1VaSHVaSlpIcU9yQjZMUUVIS05nb1JsQ2dYdDViZUs1?=
 =?utf-8?B?TUhNWU5uMFFuSktoYjdwSHNDYzl0N1JzV0VFUFNaTHFLTXl6UUpJREMzakJ5?=
 =?utf-8?B?dXZMazd4MXRtYU5KVlVoMVdiZ0lWM25vZVM2a0prcGkzYVJSWTJSY1EvcytR?=
 =?utf-8?B?M0FzMW5lbmJDWEpyMUFwYkhITnllSmJRN3EwR01NTWlXWkdpREVMbjVtUHhT?=
 =?utf-8?B?SUlOUkkvNWhZRUdTV0x4NmM2TjFBVXdWOVJhUjBRcVFoU0YrRDhuQWV0RjUv?=
 =?utf-8?B?MThjUGE3TjUwNXFrT1lvT3BqR3hDTGc1TERJVnhBaTZZY2VOdnBoaUtBQkVG?=
 =?utf-8?B?TDhnVWVJcEwyWUp2RTEvYmFyc2wvdTloYXZLZk1xY0VTWFdwWDA1V1Y3WDFJ?=
 =?utf-8?B?UytFQUdaMnVnQXdEVmc2bFZVVE4rc3ZKSUtIRUg4a3Erbm5Rb09qTDhFOHBq?=
 =?utf-8?B?aXhOSTZEVHlsWWRhQVByRXIwWk1lUHlYdk1oYTFwSTYvdUNnQkN3QjhqSW9Q?=
 =?utf-8?B?VWNCb1JkK1pDcnRZZFViUFVEU3MyVGxlQURhaFUyOGNqblcxWlU3NVVWaUdr?=
 =?utf-8?B?a0cwbXBXOEhRU3R0YWRXYlpZN2xEWk5BektWL1A1VGpwSTF4M1M4MFhiZk1Y?=
 =?utf-8?B?d0w2bWxuTTVZNUpHbDJvUW4zbGxIUVFXRmYwQTJXQ0lFK3ZuYjVkUXE2RGxE?=
 =?utf-8?B?dlZTTzRJUUFaUC9pdlJlVGhQUkdlbnB3UzBHYStNOVdZMmFFNXV5WGRvano1?=
 =?utf-8?B?WVhCZEViemtjSGpPeHlBbVNvNGRrSmhOZzFtSVRhWUVDOW81UFFYQ28rTkZW?=
 =?utf-8?B?Q016aFlHV0g4R0pJR2VsQng2Qm5qSGF2U1ZCZzBLaUpNVWpUUFY5anh3S2lr?=
 =?utf-8?B?UDh2aXV3NjRsTWM5bFVQdUtBZmNEM1FnSFlqcDNWVFRFcm94WDFrTkhpeGM1?=
 =?utf-8?B?dkQzTUF3bmRGT3JhU21oREV2TTQxbVhZVkRMWStVTWFsSGdPcTRSTlUrSjYw?=
 =?utf-8?B?MGs5KytSQ1JpaVJFU3luS1JGc0JRPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f6f3bd-9a1a-4324-3bcd-08da00544527
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 16:05:16.5360
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fe3Jfq1r/r9CLkGzZoJ0xpG4YuRrSdDAhOW3SFuQwSJfJGWbjAIdoUhizwBdceaF1V0IvXat5o2sS9i6IgA8/xjlqwjJD09+YzGrPlN5Mvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB5261
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10279 signatures=690470
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 phishscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203070093
X-Proofpoint-ORIG-GUID: W_t-3vIrb_UKX08fV40KVC9CHZW5cjfH
X-Proofpoint-GUID: W_t-3vIrb_UKX08fV40KVC9CHZW5cjfH
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=HisvFF3A;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="l0n/Af/K";       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/7/22 6:56 PM, Wenchao Hao wrote:
> iscsi_alloc_conn() would alloc and initialize iscsi_cls_conn but do
> not expose it to userspace.
> iscsi_add_conn() would expose it to userspace.
> 
> LLDs should split the alloc and register to 2 steps.
> 
> And simplify iscsi_create_conn() with these helper functions.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> Signed-off-by: Wu Bo <wubo40@huawei.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 85 +++++++++++++++++++++++------
>  include/scsi/scsi_transport_iscsi.h |  3 +
>  2 files changed, 72 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 554b6f784223..092d4429bb1d 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2341,7 +2341,7 @@ void iscsi_free_session(struct iscsi_cls_session *session)
>  EXPORT_SYMBOL_GPL(iscsi_free_session);
>  
>  /**
> - * iscsi_create_conn - create iscsi class connection
> + * iscsi_alloc_conn - alloc iscsi class connection
>   * @session: iscsi cls session
>   * @dd_size: private driver data size
>   * @cid: connection id
> @@ -2356,12 +2356,10 @@ EXPORT_SYMBOL_GPL(iscsi_free_session);
>   * non-zero.
>   */
>  struct iscsi_cls_conn *
> -iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
> +iscsi_alloc_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>  {
>  	struct iscsi_transport *transport = session->transport;
>  	struct iscsi_cls_conn *conn;
> -	unsigned long flags;
> -	int err;
>  
>  	conn = kzalloc(sizeof(*conn) + dd_size, GFP_KERNEL);
>  	if (!conn)
> @@ -2383,35 +2381,90 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>  	dev_set_name(&conn->dev, "connection%d:%u", session->sid, cid);
>  	conn->dev.parent = &session->dev;
>  	conn->dev.release = iscsi_conn_release;
> +
> +	return conn;
> +
> +free_conn:
> +	kfree(conn);
> +	return NULL;
> +}
> +EXPORT_SYMBOL_GPL(iscsi_alloc_conn);
> +
> +/**
> + * iscsi_add_conn - add iscsi class connection
> + * @conn: iscsi cls connection
> + *
> + * this would expose iscsi_cls_conn to sysfs, so make sure the related
> + * resources when access sysfs attributes are initialized before calling this.
> + */
> +int iscsi_add_conn(struct iscsi_cls_conn *conn)
> +{
> +	int err;
> +	unsigned long flags;
> +	struct iscsi_cls_session *session = iscsi_dev_to_session(conn->dev.parent);
> +
>  	err = device_register(&conn->dev);

You should use device_initialize in iscsi_alloc_conn. Here use device_add.

Then make a iscsi_remove_conn function which does device_del. The iscsi_free_conn
does a device_put.

Patch2 should not be doing kfree on the cls_conn because it has no idea what
the iscsi class needs to do to unravel things. For example, your patch leaks the
parent on failures because it doesn't do a put on the parent/session to handle
the get that's done in iscsi_alloc_conn.

In a patch3 you can then fix up iscsi_conn_teardown to remove the tmp_* kfree
code. So at the beginning of iscsi_conn_teardown do the iscsi_remove_conn.
Then after we have cleaned everything up in there do the iscsi_free_conn.

We then don't need the tmp_* code. We can just do:

       kfree(conn->persistent_address);
       kfree(conn->local_ipaddr);

anytime after the iscsi_remove_conn call.


>  	if (err) {
>  		iscsi_cls_session_printk(KERN_ERR, session, "could not "
>  					 "register connection's dev\n");
> -		goto release_parent_ref;
> +		put_device(&session->dev);
> +		return err;
>  	}
>  	err = transport_register_device(&conn->dev);
>  	if (err) {
>  		iscsi_cls_session_printk(KERN_ERR, session, "could not "
>  					 "register transport's dev\n");
> -		goto release_conn_ref;
> +		device_unregister(&conn->dev);
> +		put_device(&session->dev);
> +		return err;
>  	}
>  
>  	spin_lock_irqsave(&connlock, flags);
>  	list_add(&conn->conn_list, &connlist);
>  	spin_unlock_irqrestore(&connlock, flags);
>  
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(iscsi_add_conn);
> +
> +/**
> + * iscsi_create_conn - create iscsi class connection
> + * @session: iscsi cls session
> + * @dd_size: private driver data size
> + * @cid: connection id
> + *
> + * This can be called from a LLD or iscsi_transport. The connection
> + * is child of the session so cid must be unique for all connections
> + * on the session.
> + *
> + * Since we do not support MCS, cid will normally be zero. In some cases
> + * for software iscsi we could be trying to preallocate a connection struct
> + * in which case there could be two connection structs and cid would be
> + * non-zero.
> + *
> + * Note: iscsi_cls_conn would be exposed to sysfs after this function, it
> + * means attributes of iscsi_cls_conn are accessible to userspace. So the
> + * caller must make sure everything related these sysfs attributes are
> + * already initialized.
> + */
> +struct iscsi_cls_conn *
> +iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)


You should kill this since it's not used anymore.

> +{
> +	struct iscsi_cls_conn *conn;
> +	int err;
> +
> +	conn = iscsi_alloc_conn(session, dd_size, cid);
> +	if (!conn)
> +		return NULL;
> +
> +	err = iscsi_add_conn(conn);
> +	if (err) {
> +		kfree(conn);
> +		return NULL;
> +	}
> +
>  	ISCSI_DBG_TRANS_CONN(conn, "Completed conn creation\n");
>  	return conn;
> -
> -release_conn_ref:
> -	device_unregister(&conn->dev);
> -	put_device(&session->dev);
> -	return NULL;
> -release_parent_ref:
> -	put_device(&session->dev);
> -free_conn:
> -	kfree(conn);
> -	return NULL;
>  }
>  
>  EXPORT_SYMBOL_GPL(iscsi_create_conn);
> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
> index c5d7810fd792..fd9ce99c2186 100644
> --- a/include/scsi/scsi_transport_iscsi.h
> +++ b/include/scsi/scsi_transport_iscsi.h
> @@ -441,6 +441,9 @@ extern struct iscsi_cls_session *iscsi_create_session(struct Scsi_Host *shost,
>  						unsigned int target_id);
>  extern void iscsi_remove_session(struct iscsi_cls_session *session);
>  extern void iscsi_free_session(struct iscsi_cls_session *session);
> +extern int iscsi_add_conn(struct iscsi_cls_conn *conn);
> +extern struct iscsi_cls_conn *iscsi_alloc_conn(struct iscsi_cls_session *sess,
> +						int dd_size, uint32_t cid);
>  extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
>  						int dd_size, uint32_t cid);
>  extern void iscsi_put_conn(struct iscsi_cls_conn *conn);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/c90dbaa1-199c-5430-7d0d-c91303f96fc8%40oracle.com.
