Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBM543WOAMGQEKJQTV2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9917364A564
	for <lists+open-iscsi@lfdr.de>; Mon, 12 Dec 2022 18:00:38 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id b13-20020a056a000a8d00b0057348c50123sf198074pfl.18
        for <lists+open-iscsi@lfdr.de>; Mon, 12 Dec 2022 09:00:38 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1670864437; cv=pass;
        d=google.com; s=arc-20160816;
        b=WtJH5VDEDD2st2IHxQJ6InP13/3sIJnXgE7PRhS0818OIioWaQ0LR27jIRO/fjFMqK
         OE9hvNxBQtql30/W0He+DgKhUNNsoFn+2nrWcaR7S1N6wt1JosnPUYvGsZqjQXaADjpe
         S5z5/Uctvpc75Fj+cL89Xq4xTWDxJpZtkuoEuePzr6Q4hl3S9sC1rEK718+i6m5b9Y9A
         6MhB7qkop4YD0knLKFqRUuiMcdVdhqsZG50Ndp0RpPI8eTjzOdgRSoiAIkfHjpg93acQ
         TKpQ8zr6FLVp4OF1AWNJEWeRbUG5NLivGHgpfbe49M0JMcjKrQ4R41gDrruN1pnhAi4p
         ZWww==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=2NfQOGZT7SZ20Ozle6FKt9rEXp0my6gtgbhLOfAbBlg=;
        b=T4h0enmrJGGuBPqjm5VsW2+/triNnQaN/asDVmzD2uYZVgBhFNjI5RXlaFJ3sUnabr
         I3bgVel3xE4c9B1SixEJ+Lqqcb7bVMvqLtj9n29y8tbi1wSv26rMQTjPkJvhWki8z896
         CermzczWyF73JKnmk8kGofsv79z9qWF03ydzdEPxY2c+TQH6nY0muqywOS55Hi53Ea/g
         ocLbNhelKuZJpJiIIZjalJpcdBuK+Jh2LQ2dS1k9sdZ36NSXbADhv1YpgKp4WIN4VVyr
         b4th7oEkNwJF683WvGBHVxtdwsTQZIcvP+2UUrmkHLM0toFd7JiIR4Z7MM1YqQaqre4P
         bcPA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=3MDZlgU7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GOgQHcJN;
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
        bh=2NfQOGZT7SZ20Ozle6FKt9rEXp0my6gtgbhLOfAbBlg=;
        b=iHQ856CuVlMb+WLgkpAR+hZedJXNFqQDj0NhzxKeGP5kWSuJwHXxj443XVQ6c5z9Ga
         0LcEDwun2QtGqrV9XEeVol0CmbtEWQZ2ZyQfkJPBn/NYDpF2tDRmxiyVnablSMMRfUOQ
         jkrltwOl8j1vXHb0AhkTB9Y4K25sBodiQ7CVP3VbmTX2vMgywxOICANqeaYYgWhx3AB7
         3KhcZT8a74gAG/mwrp6xj2JXZU+onzhJCGZQ03gRHG9vSvFmeLYXizKA/Gcu+B/fqyM+
         INfjh6M50f++UGr2XVCXXYv2GKyNYnylao6Cr5EuQqKsD8VtG6RJe51dQfIICMvQMTTj
         1gmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2NfQOGZT7SZ20Ozle6FKt9rEXp0my6gtgbhLOfAbBlg=;
        b=2+T7yLLq9rRNK0uT2zjV4PKM0Kl7l+GiLTXOJOAKyaIywOQ92P7u6cYWMN+oA9VYo9
         cjjSBRJ44LQFFBEtwL2Tw36wVwzdH6cvUZ76T/9Oq7xN/6BXlUWhaGx7PU0Ua1sIX3L/
         MJhae8o4YqMdHVNsMbvE6ozUk4sJJa6heuJvpUqPkpZ5PV/3ow5V1ydDQEJ07wR9QPmw
         Z6SLR9QxeaBIeTsPj303S8CRH61WK3z8lRKlPptWDMAn9P6Wj6DGQloERkjHnuiQKeE/
         2mXisfgaWK2htMUXPeo8sRI26yoBHM29xdx+zUI9DCZl+Cf+OsbRI6/zNv2F/fK4TfC6
         nAww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkbMjPFhfqaGFyoMt7j+E0pqLBLojIeaLTsiFi+NRNKM1vZns1C
	BGjCkaf0pi/OTLCtr/igfLM=
X-Google-Smtp-Source: AA0mqf5DcTtHNLPoP+qeAEWvK9t46Ar9GdnzLqYhSEHFgADAJ056VSPOZBmFDtYG5AQrVSPUMkNb7A==
X-Received: by 2002:a63:4449:0:b0:477:a5e2:7b78 with SMTP id t9-20020a634449000000b00477a5e27b78mr67246820pgk.322.1670864436646;
        Mon, 12 Dec 2022 09:00:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:2b0f:0:b0:479:f3f:67bc with SMTP id r15-20020a632b0f000000b004790f3f67bcls2958701pgr.1.-pod-prod-gmail;
 Mon, 12 Dec 2022 09:00:34 -0800 (PST)
X-Received: by 2002:a05:6a00:99f:b0:578:55d2:73ac with SMTP id u31-20020a056a00099f00b0057855d273acmr7657320pfg.0.1670864434052;
        Mon, 12 Dec 2022 09:00:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670864434; cv=pass;
        d=google.com; s=arc-20160816;
        b=MpvBEDHqmKujX3uZp8Lz6qdsRyIkcp8AbdDVdsDEN6HEprzNw3dKnvXVeyZB+LHgPa
         Qy9RbKolOOw0olUEI1AU3Tenu1fhFYF831o52BXjX/n8jat/wz9g4zPHc/r69Dlw49x1
         kHXFYpSqxuvDWUuB6UjryTRDivcrwqu2Vr2j//fFHdbskyWYnkvoNFUKuTwUpvSZ/IA3
         t1Rd5Ti+PtXkh7ughEI6fLSo2HKUlSeM5KzmapwBIn8Z1xH3BIri4RCmIOyVeWk5JgYt
         bQu5TtGTVFpudlsAC54twAq150cjHJp2O24SYJeZogsi52k68lyz76RLa6ujyLWGIvh7
         gCgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=rbch7dvRY48C3IiSTOQqR20GYVHjn4k15uAvPq6QuUA=;
        b=UhiD88hhU2fdpxRZpoDU28irLx+UeVnWdKyTnhv3o7ECBY8URYs3VJBRZEcc+O3E7/
         flQLrpOdbehCRraYRQeSyyYJUpXdTOXDaBZVUHnF3FE93IUc3JwCDbVHBsFWe5CCWyEr
         CDBHa55sMtFo8roVhHCMI7UUdKQG98udRa/o1MICtGt0SXo2liaElaUawCXHIan/ZPEh
         atoiV/K6F4lrdUts76moOAUtFBWvqweALUmmyDP1cYLzWqXu3YkKihxmBSrHK3VXCeN4
         Y/RXWvnBJDGlYJyXHianC9w4LHweuJ8Bm79TDgwunar/wEAGz1BXqIGlvAfnKXCGH+LW
         GgdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=3MDZlgU7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=GOgQHcJN;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id h2-20020a625302000000b0056611e6228dsi539823pfb.1.2022.12.12.09.00.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Dec 2022 09:00:34 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BCGwrrs002656;
	Mon, 12 Dec 2022 17:00:32 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3mcjnsu7xm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 12 Dec 2022 17:00:32 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2BCFfYtf031734;
	Mon, 12 Dec 2022 17:00:31 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3mcgj4aw0n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 12 Dec 2022 17:00:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzUDyYNapd815bJc/GpkITJPKIfKQj+nZ8L3291RxZgebpCMi/s2Zw2Mpsfi37cLMzJ3OreP9U/seTpmxO6YDKHx5RXLizkNEJdXRizmcHNDrcn7pVdLiGXBkpYyc3+ZGqRxLxdFOuqkzz+d8RYv4kW3tBbn9bMr2EQMOtQbr0LWebOmV9JgY3a+yN07bP8coaB2i4JybeoHhogHi8oWVLH5DrKBKPbjJShDutXi0Dp537AgNaFxlvuMJrlplWYXwk00Pen0PG1WXBg/hfkOEnnVCsvZlZTpBXaRBRcmMeOdeq9zsjou3JX0TTOjcZiTMbX36+Jo9wC6qAOu+8u56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rbch7dvRY48C3IiSTOQqR20GYVHjn4k15uAvPq6QuUA=;
 b=g7nJoLPbihwQF98xeYIVKnsx95QNx0GVxgP+GGvep6b4GwWt/t4XBjzCdcIo8hu6yFY/QVPlklyZ1oUCF5D+nh4elH8zCEWidRECp+C4fZmTlOnLgbGiXQ+n3+nWlABQ/Fjk5mKwa15ydCe1HhCCd8raYw6OlgF0ngtn9E45b5q2OjU9P5x3GVaW0s7kiG5vsxEYV76ff9C6G0fgiG11DyKgd5+bePTkzuaboYPN0/3vB4PTH2utWy5sVIlyQEogUhV87EnQvhExV2lcaqyjfyQrnETVJXjLVUzVLcU4Rn0xF+Dc/HiV972TPzMxBPn6vrTJu3Y4t7mUv+gQjF4Agw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB6098.namprd10.prod.outlook.com (2603:10b6:208:3ad::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Mon, 12 Dec 2022 17:00:27 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372%7]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 17:00:27 +0000
Message-ID: <a60661e9-0ea5-1087-4fbe-27a11cf7edf0@oracle.com>
Date: Mon, 12 Dec 2022 11:00:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scsi: iscsi_tcp: Fix UAF when access shost attr during
 session logout
To: Wenchao Hao <haowenchao22@gmail.com>
Cc: Ding Hui <dinghui@sangfor.com.cn>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221209082247.6330-1-dinghui@sangfor.com.cn>
 <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
 <CAOptpSO-TMhqR35RW4Sssm29NA=8rJ6-9TgjTVpGKpYOeS_8sA@mail.gmail.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <CAOptpSO-TMhqR35RW4Sssm29NA=8rJ6-9TgjTVpGKpYOeS_8sA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:610:b3::35) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB6098:EE_
X-MS-Office365-Filtering-Correlation-Id: afcd7c6b-6070-4312-0d88-08dadc625e2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I1hNx8hob6lIrg/WsOaQMXBHAjxDwXBFs/BoKTFHcjfcofnwyVfPb8PG3aL6/Ak/Mr9BZQQbyLuDmJT23VpW4bDsl5lFivZEl42OdrVkREvdGNzEBGSetxyFofMs/N8bktWp81VOcFT2uwi04zWADlvb1SzjqvzGyk28HUjFrKAmOpsBrxLB0Y+xwzvlhZ92pcKJuu2SXV6FvKhSWb9vW/tMF04Rv8vXtA1Alw393tMjrDBZuUi9Pbeepm3V2Q2lPRQfYKwfMyV0xq07+8ricQpZrjEe2opX0viAOLirJNbi7khROHCrr+/zcFWe9Q4VhNA5HwXoRYiIV7595ncXw0T+LP+Vn91G4aTwncznFAEMpG/BAcWPGuvY0akax/sl7d//vHYsPcw7h5K8KpNr3ebdGVnUnLxoyguF1zJ51hFT/H7KFhUpcgfhDQiuepBz9/v3NP+C9b3jFvr5BOAo6jkGS2AyzvP3KG9NMULY6i77Zc3o2xM66oj8QaeSGloW9/4YHZSf2Qmuo8JhYy93eqT6fzCLM4EZhDZ1sOdCwMiB8aSmCR6I5Zc5lssgZqNq5E3JKIOlEtLyIatv6U0cSVxGBD+2tck524Qrg4noxVHEYncJh10zUOD1gDjnhb3n0JIF1loIMIUF+CztdbmtCwxRSBJh8RwW8ibwgYsKL2lm9L+YKEcGlzVZTv+H2ROATa7kTDV3BKf/KKxHCQIUubR6scAI2eFXecopGDt+60YdodFbCfc5bQUGHbC3xvxi
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199015)(31686004)(6486002)(966005)(478600001)(53546011)(2906002)(6506007)(31696002)(86362001)(36756003)(8936002)(26005)(186003)(2616005)(38100700002)(6512007)(4326008)(83380400001)(5660300002)(41300700001)(66946007)(8676002)(66476007)(66556008)(6916009)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?citMMDVDSkQzNkwrdjhic0FNc3Avb0JCQy9Ybi9BUmxaWkZBMktsdXA2QUJJ?=
 =?utf-8?B?VVFrZHBHYUxnYkpjeWhET05iV1JESmdBb3pReDAzQnNWVWEwa3l5TURlbzgx?=
 =?utf-8?B?TEhRZTF5VFBLdTF6QktQZlJ3bzBTNjdWQ0pNb1hZblU0UHlwa0s0TTh5MnVY?=
 =?utf-8?B?YXVWU2xlZEZKUjhBb2NEZnhXeVpITHlFSlFHM0RMcENUT1VLSUhCSlZsUFFs?=
 =?utf-8?B?R2RickgyR0VjSEhNUzdYUk03Y29ZSnI0L0pLRHZqVnV6bzdObHVqVVdsTHI2?=
 =?utf-8?B?eFZaTnMrdkpxK0k3QmhtNEsvUEExc1FEU0hTclRjenhrT2pVNUQrS3dkVXl5?=
 =?utf-8?B?UUVvTXZFNFFENXBGUTR0cXpWdktmeVlBLzB5RnR4VXNUSGs0Q1NGd2FSQUVn?=
 =?utf-8?B?cmxKeVkzUEFkbDJkRnJEM0JBdXEvRnFHVzVpU3JUZmtjS0FVOVdGMmtHODl6?=
 =?utf-8?B?bHNienRNRkhobFlvT25PbWt6YVVGRXJZUGNrdzc0T2lrMGVKOXpVaTh6S3VC?=
 =?utf-8?B?eUk1eUNKRzJMOGlNNHdaUHpCQzFtMnNqK1Y1V2pYaERhdzJRbi9WTEhYRi9m?=
 =?utf-8?B?N09yU0Jad285L2lMNU1FcGdEVzd0NmxncUd2MitXMkhhbjJXWHhGRkUwbWV4?=
 =?utf-8?B?YlRlOWMwZytGRXlPY1RDTDRqR0dNR3YrZnE2cytmbVVMM0p2em9YNENtV3JH?=
 =?utf-8?B?TUhyR0FTUkZGRGQ0bDM1MW1EeE1PNS9RL3lFOHljS3ZTcVd2ZVBNK2M2bFZZ?=
 =?utf-8?B?dTVMcERKOGVPNFhFVWViMWsrMi9mYVFrc1paMjFDUEdveG1ZMmI4U0lxcDZl?=
 =?utf-8?B?TW92ZiswVVl1MmlxUVVzTmZMVzJlMFZSdXplNU1YaGo2L2l6dnZhVjIwM1Ev?=
 =?utf-8?B?VUp6U3dZVGMzaXB6dkUxSldkM2k3UTcxNTFRVzUrcVc1Vk1vcEM1b2ZOUTRI?=
 =?utf-8?B?bis5RmFDZVJaVVBrTS9zMnNuM3pWdENjbkNTYmkrUW5SSVd5ZHgzVkhiZlk5?=
 =?utf-8?B?YWJHU0lWd0RpVk51anZqbTVhNXNlYWRrZndTYTc2RHVPWFFlRWUySzdIbkJ2?=
 =?utf-8?B?Vjh5OGhHNHA4REZ3VmNpRWtwV1VzUWliMlUzM1JSbElHZnRDdmNOcUtwREY1?=
 =?utf-8?B?aFlhR2Y0V3o5VUpJclFrdERqSVJBQnN3eE1URjNnRklYa3hDVXUwSktRZHVY?=
 =?utf-8?B?ais2K2wxUkNJVzBEZHNiQ2NheloxUjNVL1M3cWpuMjkzVDRHRjcycmMvQWM5?=
 =?utf-8?B?a3A0QytGWTFaRW51NUY4MU1lTENtWEJ0UDBwcnJNZ2RtNkNFanZ3dUNab0JL?=
 =?utf-8?B?d1JjTGdkK2pDcHRjc1E0cmplZGdiaDZEb0xPMmxQa2ZIQUZzM0pITWt2RHph?=
 =?utf-8?B?UW55Wmo1TnZiT2NrZStPRDdXcEVVcUhMS0x1L0N3SHRldDVPVmRuWFd3NzRV?=
 =?utf-8?B?ZjJPWHJCZFMyakNsU0twbk11QmsvTVRTVGFuWUVRWDd5SWplZ1Bnb1Zuc0hj?=
 =?utf-8?B?K1VRcEZLamhMN0x3N2kyaGhnbTRSSUhpV3hrYkxSdDNUWGlZcGhiMEhUdFMy?=
 =?utf-8?B?QmxOZ01sT0VNVFM1SDA5enNxcml2dkNCTnZpbG9RL2JacWFKVCszYm1kc3Vw?=
 =?utf-8?B?SGh0cHQ4Mnc3UnFMNkc4ZWorK05RWFUwRTBTd1AxYzZtTVJiNjdycFUxRkM0?=
 =?utf-8?B?NURmaEVMbGxQMTRhejgxWDJoWnVjdmRnR2Y0anllNHZkT09Sc3RFSlNQTWdG?=
 =?utf-8?B?RzF2ODR1UGRIeDYzTXNMbDhQZEEvK0dXbjNoNkNYY0xxQVZIdEJvWUc5NStZ?=
 =?utf-8?B?TFhUNFR5TWRLK3ZuNjJmSmJ2djRyeldVM29XME0rOU0xMVlSMTdDeXFVVU13?=
 =?utf-8?B?dUpHNlhGeUc3dXFkd3JPY1d5SGZ3V0x3eWVwWWVaQU92aldsNjdoUTJpd3Vk?=
 =?utf-8?B?QzArNVIwTXRSNnJHbmllK2lZQkhKYTN5TEFIbGtBdHloTkVWWmg4RVhQdWlk?=
 =?utf-8?B?MHNrZXZ0SFh1SVFzTk05Z29nRHViTDlZclMrNDRIVE9sTm90cTA0NGlZZzUw?=
 =?utf-8?B?OUdkeHZ4ZVBEcmFiYzhkYVh0UEtSTE1EaU1SQ0RtNWhNWHVoV09mUVlhRlhz?=
 =?utf-8?B?OEJQVXBkRDhUWW1DcHRuOGtXdWVmNjM3ZzRqREtvWnNLTEwrTG1PTkJGYmkw?=
 =?utf-8?B?dkE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afcd7c6b-6070-4312-0d88-08dadc625e2b
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 17:00:27.4413
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bsCjNroP3a/U3k90KzIu+CA97K32xdzcKJuBzvrDZxkePliVadvm6Y6k7GXacYs8FOLbpPnu8YAG0/uFNYShraxXub87wi/uzvD0YcIQXxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6098
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-12_02,2022-12-12_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0
 mlxlogscore=999 adultscore=0 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2212120154
X-Proofpoint-GUID: E28E7Su9mssG2IkelaSOEvYLs9usH3Ys
X-Proofpoint-ORIG-GUID: E28E7Su9mssG2IkelaSOEvYLs9usH3Ys
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=3MDZlgU7;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=GOgQHcJN;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 12/11/22 8:32 AM, Wenchao Hao wrote:
> On Sun, Dec 11, 2022 at 6:07 AM Mike Christie
> <michael.christie@oracle.com> wrote:
>>
>> On 12/9/22 2:22 AM, Ding Hui wrote:
>>> During iscsi session logout, if another task accessing shost ipaddress
>>> attr at this time, we can get a KASAN UAF report like this:
>>>
>>> [  276.941685] ==================================================================
>>> [  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
>>> [  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
>>> [  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6.1.0-rc8+ #3
>>> [  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 11/12/2020
>>> [  276.944470] Call Trace:
>>> [  276.944943]  <TASK>
>>> [  276.945397]  dump_stack_lvl+0x34/0x48
>>> [  276.945887]  print_address_description.constprop.0+0x86/0x1e7
>>> [  276.946421]  print_report+0x36/0x4f
>>> [  276.947358]  kasan_report+0xad/0x130
>>> [  276.948234]  kasan_check_range+0x35/0x1c0
>>> [  276.948674]  _raw_spin_lock_bh+0x78/0xe0
>>> [  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
>>> [  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [scsi_transport_iscsi]
>>> [  276.952185]  dev_attr_show+0x3f/0x80
>>> [  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
>>> [  276.953401]  seq_read_iter+0x402/0x1020
>>> [  276.954260]  vfs_read+0x532/0x7b0
>>> [  276.955113]  ksys_read+0xed/0x1c0
>>> [  276.955952]  do_syscall_64+0x38/0x90
>>> [  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>> [  276.956769] RIP: 0033:0x7f5d3a679222
>>> [  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
>>> [  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
>>> [  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d3a679222
>>> [  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 0000000000000003
>>> [  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 0000000000000000
>>> [  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 0000000000020000
>>> [  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a26dada58
>>> [  276.960536]  </TASK>
>>> [  276.961357] Allocated by task 2209:
>>> [  276.961756]  kasan_save_stack+0x1e/0x40
>>> [  276.962170]  kasan_set_track+0x21/0x30
>>> [  276.962557]  __kasan_kmalloc+0x7e/0x90
>>> [  276.962923]  __kmalloc+0x5b/0x140
>>> [  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
>>> [  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
>>> [  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
>>> [  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transport_iscsi]
>>> [  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
>>> [  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
>>> [  276.965546]  netlink_unicast+0x4d5/0x7b0
>>> [  276.965905]  netlink_sendmsg+0x78d/0xc30
>>> [  276.966236]  sock_sendmsg+0xe5/0x120
>>> [  276.966576]  ____sys_sendmsg+0x5fe/0x860
>>> [  276.966923]  ___sys_sendmsg+0xe0/0x170
>>> [  276.967300]  __sys_sendmsg+0xc8/0x170
>>> [  276.967666]  do_syscall_64+0x38/0x90
>>> [  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>> [  276.968773] Freed by task 2209:
>>> [  276.969111]  kasan_save_stack+0x1e/0x40
>>> [  276.969449]  kasan_set_track+0x21/0x30
>>> [  276.969789]  kasan_save_free_info+0x2a/0x50
>>> [  276.970146]  __kasan_slab_free+0x106/0x190
>>> [  276.970470]  __kmem_cache_free+0x133/0x270
>>> [  276.970816]  device_release+0x98/0x210
>>> [  276.971145]  kobject_cleanup+0x101/0x360
>>> [  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
>>> [  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
>>> [  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
>>> [  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
>>> [  276.972808]  netlink_unicast+0x4d5/0x7b0
>>> [  276.973201]  netlink_sendmsg+0x78d/0xc30
>>> [  276.973544]  sock_sendmsg+0xe5/0x120
>>> [  276.973864]  ____sys_sendmsg+0x5fe/0x860
>>> [  276.974248]  ___sys_sendmsg+0xe0/0x170
>>> [  276.974583]  __sys_sendmsg+0xc8/0x170
>>> [  276.974891]  do_syscall_64+0x38/0x90
>>> [  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>>>
>>> We can easily reproduce by two tasks:
>>> 1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
>>> 2. while :; do cat /sys/devices/platform/host*/iscsi_host/host*/ipaddress; done
>>>
>>>             iscsid                |        cat
>>> ----------------------------------+-------------------------------------------------
>>> |- iscsi_sw_tcp_session_destroy   |
>>>   |- iscsi_session_teardown       |
>>>     |- device_release             |
>>>       |- iscsi_session_release    |  |- dev_attr_show
>>>         |- kfree                  |    |- show_host_param_ISCSI_HOST_PARAM_IPADDRESS
>>>                                   |      |- iscsi_sw_tcp_host_get_param
>>>                                   |        |- r/w tcp_sw_host->session (UAF)
>>>   |- iscsi_host_remove            |
>>>   |- iscsi_host_free              |
>>>
>>> Since shost hold a pointer to session which is belong to cls_session by its
>>> priv tcp_sw_host, so we should get a ref of cls_session, and after
>>> iscsi_host_remove() the sysfs is cleared, then we can drop the ref.
>>>
>>
>> Nice bug report and thanks for the patch. I think though we should just
>> split the removal from the freeing. The removal will wait on users
>> accessing sysfs files for us, so once they return we know we can just
>> free things.
>>
>> Something like this:
>>
>>
> 
> Hi, dinghui and Mike, I submitted patches to fix this issue one year
> ago. But I missed Mike's
> reply because I was new to the community, so the patches did not keep on.
> 
> https://lore.kernel.org/linux-scsi/20210407012450.97754-1-haowenchao@huawei.com/
> 
> Because of my negligence, this bug has been discovered so far, and I
> apologize for this.

Ah yeah, I remember that now. Don't worry about it. It was also my fault
for not pinging you.

I'll fix up my patches into a proper patchset and submit.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a60661e9-0ea5-1087-4fbe-27a11cf7edf0%40oracle.com.
