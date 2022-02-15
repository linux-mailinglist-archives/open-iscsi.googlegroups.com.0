Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB55KV6IAMGQEEWLK5NA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD004B7022
	for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 17:31:53 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id z4-20020a9f3704000000b0030bb302b19dsf8247166uad.11
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 08:31:53 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1644942712; cv=pass;
        d=google.com; s=arc-20160816;
        b=U5XOnAsvRbOUDuvJy+N5KpI9BKA5h7uDVJOMbFOi9Nan/yDVqSuiZId+N2y/lwMY3c
         fE2q7GNLdWhk0ZLAlO+8QvaBcb/ig3Js9TJ/+QcqMbt9+0a8MvgVNxrEV/Kg2Gnxgg80
         1eg0zNATiK/EkxRow45lTTFpSCtrUC0I5rgNZjB8yw5C1gjaLE9gfIaiz1PgkNyeTHlx
         1zA1j3uHOjzdmPHfFQLdQryY8w5N3fIEpKrRGXFWzRq/LdvA657P8z+yTBzgO05YdrWk
         dNgKeV058aX7UHPUmU5UY2gqgSTkXJJ0sV8oXTxMr/rYE2I9x/JtuITUA97UKgLI1y/i
         fyjA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=DbvBMJCglSDdTLSb+LVQ0jO88S16yBi8wFN45TCH6kc=;
        b=yuWK9tdjPlqTnZvsCZbNJjWuw5aiTRqpnKN3ISepxNBCYw7FgHxarQ8qKPNLMTqavT
         l5jrqUeKcVMwV+HIicjnt8jyhga2MW38RzKz/NM+kMaukCJXk6VUz+rgp91ez1VWPHg2
         TpJeZtbMzp64EcAZjV2Z13XcOWC594yOyOzny+n4ODIPaoH0ejqxPmkox6SeyUygCghX
         ZFyfPTwb+O/PS/Nw0UDakX+UuGtyOnhcHxEhASx32zMscQ+SjqRtAUNixLoqG0N5gXj2
         3NaaTmC6taihNrkNjqDzgXioKgXcSVP8joUnnMpGOEwRSKhDB/3z6QI7DVM+6wFmZB7+
         3gEQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=itWT02Sv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=k2RirUqI;
       arc=pass (i=1);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DbvBMJCglSDdTLSb+LVQ0jO88S16yBi8wFN45TCH6kc=;
        b=lW8HV58s2vuwBMwT+nyyNrAfyW5iYx3RWZjBEc4ledHgFJ1NBnif68erOREfNW/xUZ
         qlTMTbexiMAqUmXEIP1IIk2b8eNJuMu4dInxxcXZxGb9EPP2igA8uDJMTH5u+HuWoVIj
         hsbiA4PU+s0hDWG4MEw4DwPu/EjvKmCg/ANZpftSiDYpNHokj1/+PFUzJFlerZP6iLU9
         7as2KkjLZjBk07AD+K34XP+w7BuBeX0ECWSPKd7k8oZ7pB8Qgo0w5clGV3E7W8GreHvp
         elJrlfBpxmplKXlXKLQMTsBVhIjy/SRTdDf0PaEL0LJm+8OUE9sIYy5JX7cE0MUxXUda
         FA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DbvBMJCglSDdTLSb+LVQ0jO88S16yBi8wFN45TCH6kc=;
        b=5Hej71xD8WfaSt5NK2lWPgeJBNgdZBlI5GDucSyZIUUfQkJPm/fqCiyUHR1uXWX+yw
         +/Olhyl7r8SGRdAXTKpf3luQ9/4314WHyXLI+qoCCOZ2SOvQurRGfv/p+AH0Gt5aNuYM
         v8INH74RzDwZvU0WrXyGEBiXiAFcW3ghD/1LwVfK29s1BihRB7t9gWsQz+VanNKBcllX
         2EM2fG4hvU3nkpWmR29/XHw7zg7vnmRPQAYKc3t7Xs04a11P1CrqbinCPLtl4LF8zXnq
         LhJ0Q9tEYd6jswj9UaXYnFPmPRRGkIoRdpoYshDfE3coJIQxoHZE3SsB3PYGS9E55z4h
         gcZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531gtXAifWEUAiVTmRoByw2T6ztrjI/DIv2yTvoNhXaLrAx7shXS
	taLj6b32HDq03RBrk2x1C3w=
X-Google-Smtp-Source: ABdhPJwoa1OAu7LQ5dZaAyn+PKWMtlhuoUVreZdfWysPMNfT0cXpxYLoJ5aFmRMKF2r5uNnCcu9SYw==
X-Received: by 2002:a05:6102:1178:: with SMTP id k24mr1638977vsg.48.1644942712435;
        Tue, 15 Feb 2022 08:31:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:c0d:: with SMTP id x13ls627414vss.2.gmail; Tue, 15
 Feb 2022 08:31:49 -0800 (PST)
X-Received: by 2002:a67:d519:: with SMTP id l25mr1551616vsj.51.1644942709186;
        Tue, 15 Feb 2022 08:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644942709; cv=pass;
        d=google.com; s=arc-20160816;
        b=clw5XgYm9mZjbc2RDv4VaD3p8XFKuig/XiCbdLFEWEWUEM3CfA8wi8W7Gfr/vtmIvw
         7Fz2JhVZfdWahKKhV8cgV++VTgp21i7mXACevirIZmwmeC8xb8NgwCE5jNUz4BY8GIIv
         5DEWYCoYLYhFdnSkFBpf7NH6aa0Xwk+N6JnJeQcCpPTnpbHIqo7DhKqWJzCqbIuoyT5z
         Gp0G09CQVPWllcv8zBYeMzP0GMVz11w1SCbA744qcQz63g4evGl7qOoClBhOx8axZ8gm
         vFOQeKqvxUVUJ7QfW1Nie+8DDNi6ysiIDDPlo8hzl0ON/nY3X9oI65VfvN0txwqRnJ8N
         OTuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=+dwq6RonyrcKfdYKlyfd/ghtoQlzaGOfxZ6lHWtXSTQ=;
        b=AfiFUpo7YiK5UlDskXXq+PC/zgxlukyz94Hn36rhzQybftytWWMJzwnWs4pZ/etQZN
         AyTq80e48hPbr1mqjsPxVf6ijbCcShsNAkQXO6zNARjrFX1O31/jDOcr4tthdqZRDFCz
         u6Yv1kgm+lxFjH5Neqk5TmoPIGWUTxBGdbNNwncW7LKQXYzMMh6y3O/3hrioWgygKrLJ
         2ynoyHiwqQ0zXsm+KjTJrME2BNu6x1Msiw9hXBUA8OvkzGVXclkqoiBooiHzQ7E4k4PB
         WPRRzpWDqQa2KVBz4tmMgTsSYdYDYv6skyoqe2JEt2Z2rJnngFHq3SaS/HGcTnMSzS+b
         +Eeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=itWT02Sv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=k2RirUqI;
       arc=pass (i=1);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id m64si1765966vkg.3.2022.02.15.08.31.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Feb 2022 08:31:49 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 21FGT2h8018456;
	Tue, 15 Feb 2022 16:31:48 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3e871pspet-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 15 Feb 2022 16:31:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21FGVEUm061656;
	Tue, 15 Feb 2022 16:31:47 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam07lp2049.outbound.protection.outlook.com [104.47.51.49])
	by userp3030.oracle.com with ESMTP id 3e620xc1r3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 15 Feb 2022 16:31:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvXcsMP3TQEVR3p2Jc1I3GMiQOtzTEMA2nnwP26aRy/j/TRtPDF1Yt/GSZ0X/yPWL+wrlopJ7ldCInflrAN1LbSvdXXXMjmgaSdpvWx6Ap0z5uW8uWdgFHLMDEFhLzYNXX5M/jh4L3SU/zGMTRd9ze91c+1I9SdP9+20RSGbl4xRXGJycqrM5Ib38+Qt9QMBsynViOI0Ms+OijqKjNL7/7bJLilTslsVXHd1gY+S32iulVHc0E1dBeVB+exDnrukGgwTwkcpsVKFgULWWXrm33STKj0/OmUnb1N32lbI72WVx+afweS/5Zubp9ncFDAi7J+2QI0GdeWITfeYbTq4Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dwq6RonyrcKfdYKlyfd/ghtoQlzaGOfxZ6lHWtXSTQ=;
 b=eJGOcqu3HyALlhEf3H2HIO+CSkw2JH1QZr7G/dmVRiHoRk2oiaUQzhKqOdGcw6njJ0ppn2aeS4iGExC895FkaZ+kjz88kjR64JhYEYmpI08rNjbwrWcvuKz1YGzgnE7avXPK6LghjS6NeVjEHNoT7GKQakC9mRZqrjmcyvuEmm287AZPB6zs+jaPxTaqlaxZlR6np1aeqCxnQ0kMerZfO2z5t7F9gCNFlkmvxfPecN6jSWOw5aIWZ7JTRexQRfoHsZXxv3xH6B8KriODz/xj/Aw2x/cQSoTZocWxCKGl0IfvpY59CH2h4iua4V4BJ6I2BVddeOBpU6XEF+fpa7Wxtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 MWHPR10MB1885.namprd10.prod.outlook.com (2603:10b6:300:10a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.14; Tue, 15 Feb
 2022 16:31:44 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3448:8685:9668:b4d5]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3448:8685:9668:b4d5%5]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 16:31:44 +0000
Message-ID: <828ac69a-fe28-0869-bc1f-7fd106dff0aa@oracle.com>
Date: Tue, 15 Feb 2022 10:31:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: Question about iscsi session block
Content-Language: en-US
To: Zhengyuan Liu <liuzhengyuang521@gmail.com>, linux-scsi@vger.kernel.org,
        open-iscsi <open-iscsi@googlegroups.com>, dm-devel@redhat.com
Cc: lduncan@suse.com, leech@redhat.com
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM5PR06CA0025.namprd06.prod.outlook.com
 (2603:10b6:3:5d::11) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: daed94bc-6ca0-4ffd-b10b-08d9f0a0a708
X-MS-TrafficTypeDiagnostic: MWHPR10MB1885:EE_
X-Microsoft-Antispam-PRVS: <MWHPR10MB1885127590A280541C604005F1349@MWHPR10MB1885.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EEgWuaiwVITEOywbXpKBSy9B1ghvVY++zvplbqRLc1toKaAwZL56AJ4p3smaPVcH09EZRq4pXaH4Gi26VrQOlaBMr11rrT6ATwvfNmuokhHJwtCyyKLjK4m/FvLu59wrrXN57JIXkUsaqpcRUBc0UcJ3MkJiSOx4EawWG88t8MkxEYr8C4zzKuGbdJnlUFrT3ReOjEgaOrzhGSjsWwOAvv7DtW63SOYnMbhCoj0qxqdHwI5dIE4G3GoaMUL7UrP4A6KgeMbu10A0eoUfCFRYrH405GCRLNc4itFbk6CNvdzEsCfWUXmsh1DQLnBXDMEPvF81n07yphReSYK6sKSMHeZ9ETJSSMvnxuhcj2r1yfbKA+tNga2TP8q1AOvQUoDM0/0nBSFGkhQuBfZ4T/gbgU0hbCftZyw3npUUkXTY2XK9KRrCWHU0tYkvHipzGa53O5ZFkFniHBmlNWou0kek3Y6GyhYv2tO0Niy1DPxGweFyun0bYjTqm1CM904hw2oLky2nAKnpJyGVwd7ezLv8+h26DXBzsChvgnLiOCJaa5uS46a2M82+JKMF6BYlDTdexch7ZkEJTc6wC0D3lQYmXI4kk3daFqBu//6XWSEKQBWLnRfWG/xYFqSi6RDtbonj5od16kZD+gbnl/PpuUelBQO3fD8ahA9FZikdm0sIoVKz0Rqsyo86fFEw85TG55MurQTRZHqeUDMipR3psot5a6eshOu7WXvLMviI/4WLgNE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(53546011)(38100700002)(31686004)(186003)(2616005)(26005)(6506007)(508600001)(6512007)(31696002)(6486002)(86362001)(2906002)(5660300002)(36756003)(83380400001)(110136005)(66556008)(4326008)(8676002)(8936002)(66476007)(316002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TklvZXRrckdTNzV3ak1IVkUyT252Q2pqQk45R0MyczV0ajNRbGdsWTQwUU1a?=
 =?utf-8?B?MXlQSkpvQ2c0MkZZUFRKWW9NV0h2Y3BCdFNtTm1RYVdBaVUyR0hUTTVsc0pW?=
 =?utf-8?B?aFlmRUpNNmlqTGo0aHlVQUdOclJZRmNhaEh3NmJUQkQrbk5OYlYzQkpyT0lv?=
 =?utf-8?B?bTIxaHJLL3o5ajBuMFEyMW9UaldmaURibTB4Qkd4NUpMQm5NN01KbnUzMDRX?=
 =?utf-8?B?VUFBcktQSFZUYWtrTXdHYkNhZkN4SitKNkExN2NKRFp1aWxvenZTeWhiL24y?=
 =?utf-8?B?SDVFSGpubnFoU1dIb2s3d3k1eUlXLzdPZTVncGFncFIydXJ3OVVtSDVPRHoz?=
 =?utf-8?B?aUFSWGt3ZlZMcHJiTlplUjZqZUVxR1QwU2U4MUh6WEVwbFRRT1JtOTNJL0lY?=
 =?utf-8?B?d0YzekZrOEtScVhKeVN1RVBXb2ExOTZWcjRWQjRhSGY4bUJ3eU43L1dUVy9u?=
 =?utf-8?B?Uk9OU0hQUFdvanZqNVJHYnUyVFBYdDVkUWtmRytXamE5RlhGYjVyNFRFZk9m?=
 =?utf-8?B?bVlQWEFQWVE3NVE2NHcxeTZKR1BaOVFQazk0QXMzUlB4M3ZSdGUraDdQN3J5?=
 =?utf-8?B?Q1ZQSUovdGFsMHYrMTAxSi9Rd1QyTFNyRmN6UmZQSHdpVVZlT0tNSE9IU014?=
 =?utf-8?B?ZitTcWkxZ3A3OXBEVFRpQkJ5N2hnaEFDVnZIditsRlR4TXg5dE1MRkExaHJp?=
 =?utf-8?B?N1ZLOXp6OVFGRW52dEkxcHp5d2l0M2JNdE1sOVpBalphbE1BakM5UTRQOEZa?=
 =?utf-8?B?NDdTSGs1Y3BxQnU0RDdQbUtQd2ZYRDJJaU5lNFZUZzgyNnNoaGQ1NDZiS1Mx?=
 =?utf-8?B?ZDZ2QVlVM1RjNDl5cXh2WGs4M2JDNmlWMWtKczM1aDFDMWJiVFR2MU94aUIz?=
 =?utf-8?B?YjdXSVdydk1zT1hZSGFlV25qeHpVc1V5VXROSmthbllqRTI4N2Z0UGNnTHRu?=
 =?utf-8?B?dTd6SEpJNmViMlBUb3NGYlF3RVpKRmpIajY1MzhkV0xZQXlZaTFaTHlxRHR1?=
 =?utf-8?B?ZUdOaE5uS202aW9TcUF1V0hFdkg0TklwM3cxdG1JbmNodHoyZmJ3QWRRalZy?=
 =?utf-8?B?NWJJdVR3bi85YjJxM3lOOVBVKys0UERXZVl6UDlQRkFodGtRTEZ4TnJkbVlh?=
 =?utf-8?B?dDUyZXNTbU9ud3pJTStPSFhGTHJGV1pyR2kvMnlLeGVTUWEzWVhoRnVVemxQ?=
 =?utf-8?B?NGRjTS9NSGV6bFozaDVrRUdhc2Fpc2ZKa0FOUkVPeTNQZmhuMnZxUytXYUdZ?=
 =?utf-8?B?UjcwUXVIMVBGQmEyMk1hb3lpaDVFM2h5cVdmTncvVnJVZDdORitEQmk4elVB?=
 =?utf-8?B?UDVUc0p5UGp2OXgvckFaQVNrTUxJd3pqRWFSME1ZTXNsTDZuZElZU2lLVE8v?=
 =?utf-8?B?clhlUUNTQ2tmU3k4bEtLSEpIUDIzNnlmejcxUVV0UnpHdnRHcCtwdVFmQzZE?=
 =?utf-8?B?Z0V3T1ZRcE9lVkxGbDBiRWd4OVNnaDhNeW1qTVlCMjJMOEJzMHQrMGdEK3Rj?=
 =?utf-8?B?SlR6VkVQSldZZVBnRGdwMmdTZk9hcHRoN3lycVFaWmV3b3Y3MmxVYmpPNWNl?=
 =?utf-8?B?QTE5Mm04M1FiZ2RibXR0K0p0MDVRbmZ0VlpSaEc0NDVUQUVaNDl5RjlzOVov?=
 =?utf-8?B?SVR3bGhudjhxQWpzT0F5NktWaW5TSWVWRWdaRUlDRjR1TEo3ZmdvcTQxTnp0?=
 =?utf-8?B?bTRjWDcvZ01MelNtOU8zalRkVzgyaTZ1cW1hclF5ZDBEU1ZzY3NFbnZZUkJM?=
 =?utf-8?B?d1UveCsvWi9qa042ejlHQzRDQldkaktlZTEwUWZVaC8wT0JWM2xZcE5tTHRo?=
 =?utf-8?B?ckk0dlN4cWRwV0dBd3hhMWE5cVpDR2dwZTFVQ1YvY25sZnhud0NGOGV0YmRQ?=
 =?utf-8?B?a2pnYnVCc3dBTmhRdGZ4Ry9odEoyTi95NXB3djNmb1pWOUNhRkJMbmR5ME9F?=
 =?utf-8?B?SzI0c0tySnFoQnU5NE5GT2w0U0lJQkY1SVpPTmJua2F1ZkpyNHJxZHpEUkFn?=
 =?utf-8?B?RUNybmg3UmtWOXQxeHpUZVJDbjJIUFRYSDhwQ0NaUit4cm5JSFFkeDNPOHlY?=
 =?utf-8?B?dmxTRkpDbExoM1RvMWk0U0VHamkyK0NLLzRLL1FOR1RyN2hTUVJFTjNFY2RP?=
 =?utf-8?B?N2MvVmFTTVBxS2hxNE1HS0gyNWFwRS80RlNWZDVvUS9MMzZMK1RiNTZLYkhi?=
 =?utf-8?B?N210REFoYkV0ZFNIRlFKTUZZVnplVEFzN3hXcm5OdXlKbG81VGREeXRGbkxB?=
 =?utf-8?B?TWs0VmgwQXBZSkY0ejI4L0E2ZFFnPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: daed94bc-6ca0-4ffd-b10b-08d9f0a0a708
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2022 16:31:44.0090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hBB8dYwZpjVUeUhPlxBIEV+n1k3LzuxRhTY5NLBXUfQYssFMVAGBoubxTrFdO8l4xO8QxcP2P6RVlF0GXjxXwdIjDv6lGfjrI/G1HyjgHHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1885
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10258 signatures=673431
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 bulkscore=0 spamscore=0 adultscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202150097
X-Proofpoint-GUID: k7J63dYYS0TvT7QpmWpw3GIQsOToNfEK
X-Proofpoint-ORIG-GUID: k7J63dYYS0TvT7QpmWpw3GIQsOToNfEK
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=itWT02Sv;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=k2RirUqI;       arc=pass (i=1);       spf=pass (google.com: domain
 of michael.christie@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=michael.christie@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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

On 2/15/22 9:49 AM, Zhengyuan Liu wrote:
> Hi, all
> 
> We have an online server which uses multipath + iscsi to attach storage
> from Storage Server. There are two NICs on the server and for each it
> carries about 20 iscsi sessions and for each session it includes about 50
>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block devices
>  on the server). The problem is: once a NIC gets faulted, it will take too long
> (nearly 80s) for multipath to switch to another good NIC link, because it
> needs to block all iscsi devices over that faulted NIC firstly. The callstack is
>  shown below:
> 
>     void iscsi_block_session(struct iscsi_cls_session *session)
>     {
>         queue_work(iscsi_eh_timer_workq, &session->block_work);
>     }
> 
>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
>  blk_mq_quiesce_queue()>synchronize_rcu()
> 
> For all sessions and all devices, it was processed sequentially, and we have
> traced that for each synchronize_rcu() call it takes about 80ms, so
> the total cost
> is about 80s (80ms * 20 * 50). It's so long that the application can't
> tolerate and
> may interrupt service.
> 
> So my question is that can we optimize the procedure to reduce the time cost on
> blocking all iscsi devices?  I'm not sure if it is a good idea to increase the
> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.

We need a patch, so the unblock call waits/cancels/flushes the block call or
they could be running in parallel.

I'll send a patchset later today so you can test it.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/828ac69a-fe28-0869-bc1f-7fd106dff0aa%40oracle.com.
