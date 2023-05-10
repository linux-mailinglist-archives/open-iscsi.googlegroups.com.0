Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBFHK56RAMGQEO4ESFSY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113f.google.com (mail-yw1-x113f.google.com [IPv6:2607:f8b0:4864:20::113f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0756FE494
	for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 21:48:38 +0200 (CEST)
Received: by mail-yw1-x113f.google.com with SMTP id 00721157ae682-559ffd15df9sf125654747b3.3
        for <lists+open-iscsi@lfdr.de>; Wed, 10 May 2023 12:48:38 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1683748117; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hd60sIqu1bSfmU2HhubtzIO0hubR0q3KXNAoixTb8lzLj3/ODWFoAbpxTfGeJGMHRh
         HRXbZIzHMFzxKXfhBsISRAEvDaHOKasQKal5uKy9xU9dnSpTo8BH3vc051tduOqEcJWC
         NHPgZZmVFeH4YAaIIiqDXIL/QL4SSfIDUWD+Tad/apl1iGYflfRdpUf4HEYBWNNoNTKu
         fuR/IOCsFSWyeNDX3HCc8xYT6Xs3mxtgLuk6SOw4aY41kjEbm43z59vhIG452ex2SbVt
         DVLXPrE9OXZJ8wwQzR4BbdqD2RA8ePWf/QC3nQY6D3RsKDtit4w7BSTIBsCh7baOyZtg
         Ah/A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=bdn3ML8BzfdavKvHLC3V4gJLgLqvYbcHiZy8lYEbd4s=;
        b=f1V4iASdsKR3/JkXgOFWdkqhsRYuuYeOmvuNvoeaQcJtNRnYaGypYOjKmhWhZoMq1w
         B+3w/q5SR0YtO/WDKhKF+kKFxkLH9+7rR5g8pxCcbg8+IqB9sVs4ZJ+CxonjSNPj3OJY
         aRH93WWyyAJ8gs8idvfFYlHGs3JVBPGJzKvv14rED5RuSiVkPKBi+aR/TG76895b6ImQ
         GEB2fq9qdob6yl6aJOmkUUct0fjLdcySAwALLCzRqe94L0Sxha3zm/ca8siMj0V6Sawn
         7zBV2cIIGGuoy2AGBoEXfPYXxOk4yhTBqaB+CWlWaK6ZGmEng3aUt+7O13X3htDcnjYI
         vYOQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=qBtxCHnR;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Kl2BMwdK;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1683748117; x=1686340117;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=bdn3ML8BzfdavKvHLC3V4gJLgLqvYbcHiZy8lYEbd4s=;
        b=rFM7F3/+Ipdi5WEVRgNBLg/4TMWDRG6xhkbN00icvbuT5Coc9lAJPkCWMk8DyNDab2
         1684GebMTydYM5CLchcHDyDi6NO3vcdJeQ3m1OXX5KuA3bhpsDNvYrrqku0w69V9K+Y6
         CvDZCWZ4ueADMuyD1P+/LZDYqPWV7Mx8b7hLzVU+Ay6ffDlme3sMlv67jUdIwC6gBH/v
         u+YcdDP2nKIwl4c0f8eFR4X4U6DBmWq2olX4OIjgJB8xm/bGTnsWValgMtW/y++66swZ
         K7BeFOp0rogDmzXuJV+CNzhHjjLfo/y8cLo9pr5YH06u990rXeKl57KB61gI7iTu2BYM
         ZfBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683748117; x=1686340117;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:to:content-language:subject:user-agent
         :date:message-id:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bdn3ML8BzfdavKvHLC3V4gJLgLqvYbcHiZy8lYEbd4s=;
        b=PtJPbx945dHhO0NhAHzQOLUx6XLEA9D1AvE1LukOvOfKUAzpvnRJkDSl5KdV5vwR6R
         2TM3slzLT/eURj29KTXX41PxnJ73vqBBfLsDHTcfCKgF4h07Oghki3hbpG49GW5a4acP
         ID8XcRQdJI14EbbFT8Zs66JV8lBEq45IrWCpafZAN59+RG0Vg+KnyjDH5Jl6ezyi0Odt
         jeRX9XHgCA5EgX/0NxH0pICajGzHn2Lr17K3OgblzPEMxJJnAznHbQdv0eYds/vG3YCV
         +tIRJKqIg2cAq0YQrjFGXKKNOuX9yLr05DvVtzqAtva5CKBA9dGTUyKS464LKpuuxpLu
         JDqA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDwKB5UwgXAoIlNQEcmEHGkYC7mIm7jpM8Ku/K3g2KB9jkW2iqct
	j8BZIgwhcatEiYDttT7Sk/A=
X-Google-Smtp-Source: ACHHUZ6eDH5hg8dQKHuO9IvH9wn+GGAtULn8Um/3iH8RIIoDYI6rc836c1cZEE+kewAQ/vCuBjdwTg==
X-Received: by 2002:a81:c844:0:b0:55a:5aa0:ffe9 with SMTP id k4-20020a81c844000000b0055a5aa0ffe9mr11110784ywl.7.1683748117704;
        Wed, 10 May 2023 12:48:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:21c1:0:b0:b95:7033:8256 with SMTP id h184-20020a2521c1000000b00b9570338256ls22694376ybh.5.-pod-prod-gmail;
 Wed, 10 May 2023 12:48:36 -0700 (PDT)
X-Received: by 2002:a25:356:0:b0:ba6:21ba:e5ce with SMTP id 83-20020a250356000000b00ba621bae5cemr4745290ybd.44.1683748115921;
        Wed, 10 May 2023 12:48:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683748115; cv=pass;
        d=google.com; s=arc-20160816;
        b=xsfi+LmNgm6hQH/xNy7fGHTH5VqqYF6yJ81IF6c8Q2wIuZzCnattfPvNEcAlXqkJf2
         W61aHEIzh9DXmO2hjS0/p5fvrIMTg+FNDMNXYW/gfQpOGvPM0813lMl7Rrx4U4fX5S+h
         iXRwoMexBbV/aRzAPgKBczQLwk9WaSBhnrotPDC4ntJPfS1Tyd5JIrmYtQ/x+3l46dCu
         YMFdr3LqWtoX5Ka5aKoWT9mO6BYTa52wI+fDnn5xJbjQ0lAp0MCqKcBFluFWK030mjKq
         jgI+/gOOFrq8DN2aQo0BOB35yZtKTwBhqsTtAS2nw4S9i7478KClbnUkTiWer9lGWTtE
         CQyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=7EtJ3Z1JDIngTSwtURqTKn5yVzTL9+HBimdkRw3x9Vg=;
        b=F0gPdJcvwqUDanp/Sla9GsOkRkycUjxx8tV0odbqMu51k5apoar6nj3BOjwI4hVAHU
         XwKsxDdg6SzWIykWoeYhFwGEoIeEEC1/0A9R5scSZsazag4qrZzt8mUHbHCqONhr4Os9
         02kZVc77re9PBBgyOhgNJ6pLMYE40y61DXSjpap2Z0D30amBpAsOMDijwCpS0DqpSzou
         RcF9xWEAODhxcuAVf2iGkZOrgaUATcb19ZLHBR6pgzchKaC1aLEo/iM2zioR0ySG9oY5
         fT4ZBJWek/RSfndEjxmyzJqrnJOrT4Y5AFcwzH/2BOKzYoueCY3VVtPOvkIhgXcMio21
         7Rdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2023-03-30 header.b=qBtxCHnR;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Kl2BMwdK;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id d4-20020a056902084400b00ba60cd20477si204986ybu.1.2023.05.10.12.48.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 May 2023 12:48:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ADxG75001188;
	Wed, 10 May 2023 19:48:35 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3qf778wfmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:48:34 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 34AIUUlo004546;
	Wed, 10 May 2023 19:48:33 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2169.outbound.protection.outlook.com [104.47.73.169])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3qf7pk1r3j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 10 May 2023 19:48:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+sib7iYpRSpFi1408KF6QEuTZmLvnhzMDJsR6ksaTrwrXACB+jnbp8Demu/eCSuqymOsh3S4yjENewHEwEPBmyvXRFslXAMwlCVWOIrmJy0rDp7aaAzZQWK2FEeOMC5G22pLv32zTAvsHO+CTT0U2nk8YZIoh4NwoJifRzU+tFugOOAWRL6JpfYYFIjf5pil+nYmS13Z0EeJ1eJ/6S+dDFTUH3e6oxXhN5kz3Sz1Wj3USuim1bKUCgivn2v4b/zVqQEJILJI5NbJcfGLVQsFJYLes7ASyrtnujRD1M44PLj62yhaj6dIm2W4xvoGLZ/CAvmZg3t9ntHqYYnx2Sr1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7EtJ3Z1JDIngTSwtURqTKn5yVzTL9+HBimdkRw3x9Vg=;
 b=SXmwL0YCUgusUzvperN4rcUYrkRrfXS2S++y5s06AE+6D8i6KagOriVW9y+BBsuz5uu10Ydl+wQ6yJ4cBDOFb5RgnPUr7vOamxd4rxJ5P8Wta33/ssTYD3NfbeYpUdrLDM063Arx9b60khMjNe1ZB/c5dh9pKi7mGymqURoSKaZ9adFQ59Yn7q5CGtCMhL9XvBQk/ckbRL5fWYLpbs9CAR9RPyItzPNcaLKHUmoC93OEaRm784C5kd3bbB/43GCEImDxcqRQ5iQFeuUKl9MFhwLoduEzFa3lOCECOv+kL/BeqXeacGJdx2fDBXbmC3mP0wEbScmAyxSb7TxJiZ1EFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB6051.namprd10.prod.outlook.com (2603:10b6:208:388::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Wed, 10 May
 2023 19:48:30 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::264c:5118:2153:91ef%12]) with mapi id 15.20.6387.020; Wed, 10 May
 2023 19:48:30 +0000
Message-ID: <56fad7cf-1bf4-82a1-2acc-53a5fc7f9c70@oracle.com>
Date: Wed, 10 May 2023 12:48:27 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.10.1
Subject: Re: [PATCH 04/11] iscsi: make all iSCSI netlink multicast namespace
 aware
Content-Language: en-US
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        netdev@vger.kernel.org
References: <20230506232930.195451-1-cleech@redhat.com>
 <20230506232930.195451-5-cleech@redhat.com>
From: michael.christie@oracle.com
In-Reply-To: <20230506232930.195451-5-cleech@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: BY3PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::24) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: 3345618c-edfd-4164-296b-08db518f87cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UWaulGXEVvWVrtV3AeljL3AuEUZMGzB+gXyzPR7eESsJlm6p2pyKIPtHrFrmazBCNTrkR77XplNENm9W2PO/ISwzE2+TVQdiJtbRug9iWk7trbMkq8LjVSwozJC4pTWxX909UXrFZO7+iQntv477l/eibmWcrbit/ahMLuIKDViJHwI8RrKoosdN5RFyoF3c3hzwFcXi9LTIUj4j0Npmbzjql1hHXnXr8FrR28p37EJB17tgz2lPXaVKLSqCQVS6lScLAehraUxDGBLS6JMlZte+baJD7KpweVAOAKAo5k6D1/85BU98mEqWB1CdO2ODNUuJXgYu/UOs/L9cmmxxqT/jrIdCpjJuxYrjbMQ1QTieSolSAdE9gANDhfDh0emAiZGKkVSBLoCEy9/13uwrEj9AI3mOoFCF9dpAxkFRILFgY5X7smxcjdKekBbqM/iJBJU+8iHifGid6JTNvZhYw3bItLKaG864OWyng7ToSNPj8+KNqmHeIb97rm0WZ3ttdEsupuT48wW9PYjQcg8AdshhyyswfYHXaGdGrL9gyQ0gkNxIBr0xvQ5wfdARG0u1ZkBnxHLEcHn3msnbnrLQHLHAVs4QrKOdbsZQIVyTq3cCO7IrfKiR8JOnC3zf8zVd
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(136003)(39860400002)(346002)(366004)(451199021)(31686004)(6666004)(66556008)(6486002)(110136005)(38100700002)(66946007)(2616005)(66476007)(316002)(31696002)(41300700001)(86362001)(8676002)(8936002)(6506007)(478600001)(53546011)(26005)(5660300002)(9686003)(6512007)(2906002)(36756003)(186003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3J4VytNaFRqNmt6RkZhc3QzbisxMk01NEdwa2lqQU44SjhXdHlSaU1pWWtS?=
 =?utf-8?B?USs0UUhoK3VjOTNRSjg0K1pqS1RNS3VSYU96TmdubHY5blF5alFrVTM2MG1Z?=
 =?utf-8?B?ckQ1S2ZBMWZSaStzVmxHYkJzek8wU0FzRkNhTmQ2clRrQzNtbUNWSE5lQmRS?=
 =?utf-8?B?MTIvaXBVOU8wUnNJbkF4alUxN1FveGJWOUFkNWFFNUZJZm1PZk1UQktsOVhT?=
 =?utf-8?B?Z1NPV1MzTDhybWlpN2VGUm9EOENydXE3OGR1ZndwUElYYUt1WVdOUjVvSFhq?=
 =?utf-8?B?ZWdrT0QyQnlJSzgvUC92RmNuNjdOaGlxS3o3dGN0cnV2SnovUUVGQ01PcnhP?=
 =?utf-8?B?cnQyMTNhK1lrTTRkVlc4ZFZNZmtlaTR3bHlpQ0NQZ1NiK1YwMUF6NjNsWFBo?=
 =?utf-8?B?ZVk2OFU4UUFFamE1dFRCc1JyODJScjAzR3VQMEFQS0NjM3ErbXVOSFhGT09k?=
 =?utf-8?B?TFRKRmZiRXp5ZjFzTTJGTEZsdmwxWlAzMVUxZ1ptcmdCNFlhZUdaRmt5WGxq?=
 =?utf-8?B?UmlXSjBaS2pLMDNldXNidTFVNGpoeVNVbVNoY1VZN1RnazB1d1VjNnQ1eGwr?=
 =?utf-8?B?NkFnNEhFdGw3M1lUdVFXRmpncUpaMlF1MS9heCtIaUMwVlU0M0dsNVVjUmFn?=
 =?utf-8?B?U2tKb2Fnd0lnRFZJS3JMRW9GOVdSaDFYRnZMaFN0eVMwUWRsSTlRMGFYRnZE?=
 =?utf-8?B?VlF1MDNOTE1IWXlQU3F5QVR4aFA4RVlJTHVSb1BJVi8yTW5yRHQyVTExVTJp?=
 =?utf-8?B?KzRBSmtzZ1BUUWVTdUNSK2RZK3BKZm1aYWRZSk55S0ZFSXczY1ZPZklLVmM0?=
 =?utf-8?B?TzNuVnBhYnY0c2h2YTNsYnp6bVUxb0dTazRIMUliU2tMeTk4aGZSWjAvdHZi?=
 =?utf-8?B?VnArZXZMbHN2WVcxaXoxeGwrNkQwcjdGZElzaDBpblJNN2lNNHAwY3g0SXFH?=
 =?utf-8?B?NkFIZVBGTmlub2NiUUc1eGJUVkJ4UjJGNUJzWk1aY2ZmQUU2YnZ5QjZvekVZ?=
 =?utf-8?B?UTdSYlBFQlZkOVhHQU0yT3l6V0hySzZDYlRqZlp5TStLUFNZSGRmd1JKSUZt?=
 =?utf-8?B?MnpydUdzZVlLR0doRXdsS2o2dW9oQkxta2h3UlFhYVNNQmlFRVQ0aDFZeTN0?=
 =?utf-8?B?VmpyZEVMV25Tci9mYys3L1cwek5YV2VxNldneEt6V0xUaUJSKzdjejJtZUVi?=
 =?utf-8?B?UXpGWkpBVHhZeUlQNkFUY2tBUW9DZG9QdlFnL2NSay90anI2VDgyTmZtMWZj?=
 =?utf-8?B?MDVGQzZRUzEwWktxVE8wd25ZWDFJN3ZOVmwvTGZXakFKYTlMNktTTk9HT3M1?=
 =?utf-8?B?N2p6c3BkVWZHalh0eTBzcXczT2h6RG5FYVIvQXNqQU14aWhBNkNrbXorRlZ4?=
 =?utf-8?B?Z3NFTStHT0VYZzl2VW01Q0FscEpXd1RxVVpWSmUyVThCV054QUdLNkR2M1VD?=
 =?utf-8?B?eEtHSGVWblUzYjUvMk9ybzkxUXFiaVpFMXFDamQ0RWdkWkxLR1FHU211QkFG?=
 =?utf-8?B?dFhhTVllU29MTklPY1k1UmY2Q2NEajlrdWxpa013Y3g1UjNHcXB6dDE4QzZv?=
 =?utf-8?B?ekdqbWZMTXZ0SzF0bnZaYjdoQWdPd3BTTE0vb3dOV2lMeDBINEpHekRXbm5a?=
 =?utf-8?B?STRUUkk5QjZ2SVpNRlRldS94SmNHRWM2eXltUFhNRmROZDdhaUJJZ2hBVlUy?=
 =?utf-8?B?TWx0VE1WQkFFK1dOc2NwNFI3OEJpMG9tZlZMZGQwRnRtc3E3VC9SczJONndW?=
 =?utf-8?B?MUUvN0ZsZWs3ZHZuMHUvb0xDdmJmRzY0Z3Z3dFBVV1ZjNnF4d0lnVjVGS0wz?=
 =?utf-8?B?aWhhVFNNNGc3bDJ3VkJQTUtjdEp2ditpeW5nYzBvMWpuQjlMZE96TnF2UUJa?=
 =?utf-8?B?aUdsbkVXcVVpZExpd0dadlBkU3Q0eDF4MlZQdXM1Sklwb1NPTkpMOTh1Z0ph?=
 =?utf-8?B?dE56OUNWOFB0cWsrNUpxaU9jU1FueVZYNm9TLzlGS3EzdzFlVzZTNzVCUzRH?=
 =?utf-8?B?dlowbjdsbFhFUDRCckZlRUtTNE9JY0pXVkh4RzlKYisyYlREWlRPaWIvNGZO?=
 =?utf-8?B?UEx6Y0pmbEhKNS80M2NFTXFyeFpabm5rNmtWUmNRMEJ0eFdDTmhxVnZXRUh2?=
 =?utf-8?B?Q2RNN0FLeEtHS1A5WTg5SWRKWFNPWVJ2d25SOXBtZXBZK2FPVTJVcXJkQ0JI?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: ezJrZbLO2Rc8mhi6XxOvTnzoLxT8pco0C0FfhoLiurQV063f6xwRxThf1PGXpRE7aWFxD3l3lXeyHRxr4osmrLyw9f92X8pdQIvv9oIPwMzai9J4iB65X/2GpkWDBDHeOUZrJUon2xXXbHK7gb0jfr+2lU3CVOG9J43WnbVMo1Yu4VqR3VL7CF+7iO0E0XTAGM+HksErPecU2RJfH+qobY47NIyJCPvKNdiOa4Ql/IXeOtMeTWb+Oy5bCnKq9Yg9npCUvv5OkvPhgoXis7MOCp3qMLeunX44MIewZGmJOKI7js16RrsvVszyEwld0Z//LgfKAvnpKNqq5KNukNmuY+PLnQlKJsAZBEWUykJRVyWp4iVjm3V/alN7GkbNiRY01TI4xUDlbpENpH4WUZStmDLj68c9L9LS0aIheYeY380iJriuSnqHIPMKrIQKdwPMHXsZTGSINEYpySCOD5ZXMLhsnHPGcy+TxOqiEGTAugVSQIEYga55oIzkrBT4k0UmTWSDlMQvWIv//l7fXcljxxjRv5EoQg5yTjkzjDSAzVO503miWVNXDEqTAyoHisjwCjpU4jPQjdK9KetMw3Cp5vrxQNYBGO3+jVAh9kEkIa1TAbJVWn4fA/Hp71fn+gejX6I+Fpl10xiJ8HluyXP/gtw+4DftweqcimLqplNj6RZcwSbD7DUrGnp78XlhJe6DZM5PFIOoXjbW0vayvUFR7o4REil/Oy9QjZx3+UNSr978G15yAJVHPxDJ33yxsK5wufs4pm3N8dDawvMAp1bjoIkQlalgZMCh2RajHawWl7bvXEZ33QR1KrF9Gg8iGkQrdZbRAQTN1fe8CB3ZDw6w+nExZ/odxysTVajd3qCzfiI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3345618c-edfd-4164-296b-08db518f87cc
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2023 19:48:30.5886
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xWEMIp11Vj71tyB4eV9Q8kRumahjohKrhZ2iA+eUsgRqVoeWF76y4sr05IkjHrXBT+KeQmKOrw7AeS8tGyrhFV7SvfaEyBBDW7uREF2/3cA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6051
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 suspectscore=0 malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305100161
X-Proofpoint-GUID: EGnUOnR2g-FAB5GeIM0aQDMdYDXiW8IM
X-Proofpoint-ORIG-GUID: EGnUOnR2g-FAB5GeIM0aQDMdYDXiW8IM
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2023-03-30 header.b=qBtxCHnR;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=Kl2BMwdK;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 5/6/23 4:29 PM, Chris Leech wrote:
> @@ -2857,11 +2859,17 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
>  			   enum iscsi_host_event_code code, uint32_t data_size,
>  			   uint8_t *data)
>  {
> +	struct Scsi_Host *shost;
> +	struct net *net;
>  	struct nlmsghdr *nlh;
>  	struct sk_buff *skb;
>  	struct iscsi_uevent *ev;
>  	int len = nlmsg_total_size(sizeof(*ev) + data_size);
>  
> +	shost = scsi_host_lookup(host_no);
> +	if (!shost)
> +		return;
> +
>  	skb = alloc_skb(len, GFP_NOIO);
>  	if (!skb) {

Need scsi_host_put. Maybe just grab the net and do the put before the alloc_skb.


>  		printk(KERN_ERR "gracefully ignored host event (%d):%d OOM\n",
> @@ -2880,7 +2888,9 @@ void iscsi_post_host_event(uint32_t host_no, struct iscsi_transport *transport,
>  	if (data_size)
>  		memcpy((char *)ev + sizeof(*ev), data, data_size);
>  
> -	iscsi_multicast_skb(skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
> +	net = iscsi_host_net(shost->shost_data);
> +	scsi_host_put(shost);
> +	iscsi_multicast_skb(net, skb, ISCSI_NL_GRP_ISCSID, GFP_NOIO);
>  }
>  EXPORT_SYMBOL_GPL(iscsi_post_host_event);
>  
> @@ -2888,11 +2898,17 @@ void iscsi_ping_comp_event(uint32_t host_no, struct iscsi_transport *transport,
>  			   uint32_t status, uint32_t pid, uint32_t data_size,
>  			   uint8_t *data)
>  {
> +	struct Scsi_Host *shost;
> +	struct net *net;
>  	struct nlmsghdr *nlh;
>  	struct sk_buff *skb;
>  	struct iscsi_uevent *ev;
>  	int len = nlmsg_total_size(sizeof(*ev) + data_size);
>  
> +	shost = scsi_host_lookup(host_no);
> +	if (!shost)
> +		return;
> +
>  	skb = alloc_skb(len, GFP_NOIO);
>  	if (!skb) {

Same as above.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/56fad7cf-1bf4-82a1-2acc-53a5fc7f9c70%40oracle.com.
