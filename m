Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBTOJWSMAMGQECVUQ7JI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 434395A55B9
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 22:42:56 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id y10-20020a5d914a000000b00688fa7b2252sf5391081ioq.0
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 13:42:56 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1661805775; cv=pass;
        d=google.com; s=arc-20160816;
        b=osrYfUSO81+k6F81BpyFXwBi6/Zj/vmoMi+jSoj7ggEj6i+4KaTCVDjEzWTYynC6Qz
         WZnBy3yXui0PuNxTAOVET5mRW8PFDO0RhoMl3Kp6MlqG23z7Np63y6sofxRcIw5ISh79
         IF2zBWYzdep08jYZP2gdldQYX+yWHRSHv0S6rgGB8Lvm7E3fBEuky7UPV/C/DWgRTPKc
         FaRe5A0bQXc9STV+V43ZeZKY3W8ymjk72WeRzw02dBwJJKItRUjEE1uwoPjB7PfYtcG0
         Vkf2BlscbVu5HMJpBP1/W0hkuk9+wSmzg4/8c0Tp60iBIdVwKmQa6ExA12n7kuAytJjX
         1tuw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=Ro9Vv8IHhmSbw2a6DMBfsLbKyobWDmZML54q5sakmh4=;
        b=jSeA3zfdSZyeEw8r5fnpzeLYlAxaAa286Vm2+O13enlplaO9sVROdshvMETt8n60f6
         xlNXC7E7zyP7eHvpQ7dT1mc6j1Xgh9Kma/l527jCins2SewEXSCE5X2+wOOlcOO/bvxJ
         WBsnz8ccgKGrPwcNs0G0qfFLxXdxfMu1mAuC9K+StezmkDI3o0tNDW3AO/DtLfZWCCnD
         2qny7xaasZObyMEOCm/oSXcp8dMwXTUXEZw1WwfjcPXObQq6Ar+t8uYLb80eioPlViAD
         h0NXLTeBpuWtukgTXymGGFso9XovI1q2Kj/0O8zvmp+NM7SK+pRFRsxL9YuwF/I+tM7N
         qnsA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=zsgR+MLT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xvroNu5D;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc;
        bh=Ro9Vv8IHhmSbw2a6DMBfsLbKyobWDmZML54q5sakmh4=;
        b=XoJX7MuvE/QOMvvGM376Aez9YSmeyrhccqf5KZPvh8NUMsWfIhhrxGs9DczEhdGJOK
         r5cZczkFv0VxhWaHZ/UMIU+9+9E7jYOKeHuIf1vZ9fUz051wH7WdHIsD6q75auZ5p6Ja
         VJi8hQhIx66cH5bY6VQ93P9IbrEojYa2k9oU8aNVzSKrSF0Wu//ZzEsFAYBFI+weVy6E
         Cu1JOVJubzFBgU5t9a3XvaRtM5H9fofPzk3w79YYAJNBdVvgXvFr4dInsFpHy7wHIYZt
         wFpFRRFQjxZYBDX55J3A/kiMx3nK2gKxGTs89ghMP1oB/R4kW+w4mLRPyU7veThW0hF6
         RSUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc;
        bh=Ro9Vv8IHhmSbw2a6DMBfsLbKyobWDmZML54q5sakmh4=;
        b=zAmSWgy994wSKLGrSHg+99XhTTcXFepVL19MgDocYxOz9WldtgJcw/zUBTjpzCkVHQ
         ppT3q2Xin3+ybxgzJFYISsPAyLy6XCNBsP1t275+EAS/+YgDrStBO+O3uboB6ILurEkp
         +xIkCXX3s1iIi0xX2U2ALiZ9HCUrv0eWW4h8rTiKm36dOe4pkEM58AfItPxts7PdWBWL
         07r6d8M27QPSLaU11LgKV1LdmKkhHJ+Edq/lH2A0duht8MmlKcwK9j/Z0MqrfWPcWyGu
         odRto8OSY3xnEkv0MH+slQzW17ls3kv/sAInAGAv9Gvw3EovKoC267DKl2/lZ5V5QJ86
         c3BA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo0srbqqCRScF1DBHcAG8qCmfRv0MhTsFiln1BpXHA7adAf6+a/T
	yYzOOwBn9nBWuVnUuIEqnx4=
X-Google-Smtp-Source: AA6agR70GdKNGkP3cuvpaoqK1vVvCqCFXocenFmRbpZh5I4jk5yoUGKFHNReTqV/ck4PR/imnFA7Lw==
X-Received: by 2002:a02:5d42:0:b0:349:e1a7:f08d with SMTP id w63-20020a025d42000000b00349e1a7f08dmr10132764jaa.61.1661805774932;
        Mon, 29 Aug 2022 13:42:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:b092:0:b0:349:e63e:93 with SMTP id v18-20020a02b092000000b00349e63e0093ls2570133jah.9.-pod-prod-gmail;
 Mon, 29 Aug 2022 13:42:53 -0700 (PDT)
X-Received: by 2002:a05:6638:1412:b0:343:c14b:839d with SMTP id k18-20020a056638141200b00343c14b839dmr10861433jad.119.1661805773554;
        Mon, 29 Aug 2022 13:42:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661805773; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPobN2/2CFA4fZFYzIfzxFe/7Fj7OkjVuky6gGKr2DMCoIprk1hWIpQa2VRGScRtNm
         VHEkqb4u1pE0ICZyiE4nkkDg8L0jZEWfYz7Ze0A5iSybXmXBI9GOKIyWBvER9uYH/TtX
         XWgK9SJRvId2dT2ltHRi8+pSlCqyF3BU8fQyieGbBL8BSUl0rlKMowx71/Izu8cNqXSe
         1ypyUImrloWFum0rJPWn+dbHll7uLcyiXTa8k6jlaaD0w5Mxd8BmKcqNj4KP6ig3T8O8
         EHbkNRI4S+lgK1eHQJupbIhCK9upRUqhXuFgzYO3MpHv59OMkOBcrDt+O4IVBOLPj7tN
         W6cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=557TutSMcDkm5xDW6w16M/u6fCaPOV+6vFjoKIRGFCw=;
        b=iRQb1w7QDahVkE4MuqBmdOWjTytoXwYnYvn5Q0O6jUVvKbJyfo3bgunYCJhAgff7ni
         ThN/nXCjgBKxSBU7ueSttCT6JqY7w11E9fAdDokN+J50yO0WNoKDwwprUp7xPhEGKWUo
         WVqelHSQH/cvCPWuUYDEzUNcfI6mBIZUXUwIOkojygnifUOS+0C1wF+z/RSkfdDk0gBJ
         tWoNLrglt/GOvvSWx4yG5aj4anfy/t/0pa3AOLo2vxtF7+o5pFss72hM+cvyJidyzqdf
         u43mFVmOCnIHJDfcuO5okKcLGOsqvg8+40xJL2Yxj71ENe3u4l9WBlaymFwC0s+7yunP
         MkgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=zsgR+MLT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xvroNu5D;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id y15-20020a02c00f000000b00349de4594d4si451299jai.3.2022.08.29.13.42.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 13:42:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27TKTQra024129;
	Mon, 29 Aug 2022 20:42:53 GMT
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3j79v0mkgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Aug 2022 20:42:52 +0000
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 27TKAZPg002857;
	Mon, 29 Aug 2022 20:42:51 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3j79q37rw7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Aug 2022 20:42:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L9IxWYGmMpxMnVqx9MfknYOgC93miPgKYjW+2Bss08rIP6pEAMelYn2wtZxVmy2kLJYTjl7xtP6CMoeHC7I+ymSTKv3LDEXs3DY36Kf82c+YwENbdcMlMpj2AllS0GNbsJWuVd03ybxvXDRLvXyxYYvzWxlv1P0/4IyTlgJrV3zAgv+a6TEL9AvkpVhvVocNk4YLnVXdjcy7Lf6glRmgvBDGE6B/X6StwjYVm3HM8xrfzMB+fIEU37j13rvsm2wklDAOzyXpo/46klXxjwVoOp1H73KWnOces182OEANl7dCNAsYIHCkK6nxMvVX95ukGQc9GRK9Gi06LN5mZZicOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=557TutSMcDkm5xDW6w16M/u6fCaPOV+6vFjoKIRGFCw=;
 b=RaVz1n9WkY+wGvGFTiY3DjIMopBFqQj3TvXYPt/Otyn4ofyQq2kB1mdFPTj31G0J2nclzesCJJSh9Kimjy/QwG03sudwPZmyYKURAw2nNbVgkHM+Fyv5ubcfK23scQUTrVb5wKRvhUlMj7f+NDILNP5tDOCjulHTRMOcYqcvkrlQ2/mPDm2s9ADHaQe6iY0na7AR/+UwRzWKLWdilFwc8DOPSzIOxawzfq8hhaRK7jhvQCdVYAqw9xOF+82WB4YjPQiDDfBb+55BjU7cazSjR1za0POtmip9Q7li0PkI99bemSxPxY1J1EHe47Y1i57SMmWvfeyEGdPJt+QgRKyxaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BYAPR10MB3208.namprd10.prod.outlook.com (2603:10b6:a03:159::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Mon, 29 Aug
 2022 20:42:49 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::8dee:d667:f326:1d50%6]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 20:42:49 +0000
Message-ID: <644defe5-2a33-9eda-ff7f-f600e635a48b@oracle.com>
Date: Mon, 29 Aug 2022 15:42:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Content-Language: en-US
To: Uday Shankar <ushankar@purestorage.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
        Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
 <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
 <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR04CA0056.namprd04.prod.outlook.com
 (2603:10b6:610:77::31) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f234590-ecd0-427f-0bc7-08da89ff090c
X-MS-TrafficTypeDiagnostic: BYAPR10MB3208:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8V29zVL0Le5yrSGRbSq2Jt5ou14z39fX2f7gRAYKn81Qchoz1pYqqbz5yMu2dzHxzyQwpnWz3tpLg9JLKoAL1hyGBxB9+/t2SeJ+wr71WEND5NBkFQREPIZUHsDEI+wv7SlzNc9+BfhquobxMyPEpvJWFaR/btt4+ibJ/kw2hkT1CUKONtvQWQlztAXKUFixNZFeV9Rcdk4jmMfEV1SlVxyy3PuK4bRLL5OK4hlSmjBbDJhB97WZLSVKd9nF64Liqw1tYucL6H+xe6BFLz0yWPl+25SlFZSxVFvJW/8WgNvPHoKubix9vFOELNdZu2J7GER9mSsnq4qhLrh2Z/QoujBxtURKfVY7qrpE50IEQIZAmF8Rtcmaca0Ra45EeV2oRJDo1dZTD8/E6iwKD/NG6u3Qks2SYkWAXHrcESOFXPId2GFdKBKK3benv/nmlAlw1L+y6hmjxEPh0UT78Iifa0yGSmOaVxvWMF8yD5Ob5CY3xe/qsAw5IVbXulb0RVaMlLbUXFXRBNMrOx1vl/tYs7AYTIsFGvOfpbLUDx20wRuhxrziWJdAiaY25ETfAS+wdyH2h9VV2MT+fv45KhBzU2hdDcYcgT6WO8JvO72qtBNXFyepP7Xi7sZ1De216dpjaRdDpySdfK5y1sI+mV3xOKRus4yXJ0iJ4pJ58FzyU93Wmjg3oiK2I3r5QM5xJTuLCUujtfSS4awdYrMV7TA3HmJ5hTLwcIBg/S9k+qc8L485F32jlH2c6JZbnVq7AdVcijr/C2Vr4pqrURWyLSCsMRKYB/u1lLpJJPOCU+RkxL66T3FlaL3XIX22jiEb+mdyHLunkkYzghwr8BFe7aJAug==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(39860400002)(366004)(136003)(396003)(346002)(2616005)(316002)(186003)(6916009)(36756003)(31686004)(6512007)(2906002)(26005)(6506007)(53546011)(83380400001)(86362001)(8936002)(6486002)(966005)(41300700001)(478600001)(5660300002)(54906003)(31696002)(38100700002)(66556008)(66476007)(66946007)(4326008)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0Z6SWNyRS9aRWcySm5TTm1NaEhHSWF6SU9GSUxJZEpUeHhLNkpXaThjUmhF?=
 =?utf-8?B?bWFSK2g2NTUwVGlXK1FSVmlWOEhFQzNWN0owRlRYdlIrU0NNVi9RaUVIOHFa?=
 =?utf-8?B?TnRLM1M0M2hTODhpZjM4dnVPUDNqYjFMZlJJZUpFRHN2bEZuMXJZbURnWDNN?=
 =?utf-8?B?SUc1aTZlWU9DNS9nRUVnV0o5UDRIc0huWFUyWDNlM2t6b0lKVHJTOVdGVXJJ?=
 =?utf-8?B?NkZLaGhNck5JWDAyMjk1aGdsWGs5RS9BTEJ6bGtoY0o3bitlcmRidE1DRmVP?=
 =?utf-8?B?amRYUnNudEFFcXhHK2daVzVEc2RkM2pybVZEL2I4aU1pbGxzVVNGbFZuWGpL?=
 =?utf-8?B?THBWWU9kV0RIQTJLRVhZR21hb3JVZ3Q2WUxuaE9YbENzamF6K09TM1Z3aFdW?=
 =?utf-8?B?MHlxVkF2RXNsRVdZOGcxeTJNeHo5TnQwenQ5SFVwWTQ4Zk55dWswU01wUFk0?=
 =?utf-8?B?MnNvY01rSzg5dzlLRHlabXo5TUwxZTNZaS9Tbnd6MEU4ZkI3WDhGdVJmMUJS?=
 =?utf-8?B?bTlnMHNnOE9xY2hRejZnU0gyTjJpLzdtUUJETmkra09hd2pQR3NsODlWVmdy?=
 =?utf-8?B?b2RJWGUvSkRkcFVLakFLTHFpSFhEcXJZUVNKOHpTWFliMjBtTjA0RTV4OEdP?=
 =?utf-8?B?aVhseFQ1MXZoNnJEY2g1NmFpbTFVRVlQdlV5SERXajZhUTg3L2dNOE53ODNr?=
 =?utf-8?B?dCtIMDlxSHVBNC9jczNMWUN5UlVmSUh0aEE4c1hPRVljbU1rdzQ2YTQxRVcy?=
 =?utf-8?B?cFE4L29meEc4c3B5dkNIWXEyazcyZFNseEUxdno1Y3FFR1AzT01oVklhOTFq?=
 =?utf-8?B?dXVueDNQQS80Uk5mWCtwNUtaa2haWkhlbFNGZnl1NnVYY2VMNnFxVnJ0Nm5w?=
 =?utf-8?B?cjdzb3ZrRGR5bnBHUkMzT0F2UmVsY1FoSmpwb0hxN2VUL25aK210N2FFWWdR?=
 =?utf-8?B?OXNwcVJBaEx6T2dKZjRBcitOdzJtYUU4TVdOdEw2R2JyODNPdDhuZlZCSWo5?=
 =?utf-8?B?RlpxM0pWOTNSa0tJaGFMTXNIWVQ4S1dhcStMSlEwdHI1Y3o4VklpNFA0UHB0?=
 =?utf-8?B?ZGpBVVpXSy9lSEs5dXpaRk9Nb1NMRzVEQUo4R2ZaN3B6R1RYRHU3c0RlWUZ3?=
 =?utf-8?B?OWs0MmRaeWZSV2IwQ1ovVWQ2WXc2ZndCR1FUU1pEenFJenZmTkJFdHJ3UXVI?=
 =?utf-8?B?TGwvNDI1L1NWSnMwSFFOdXZuN29ENUNXRlNWMnVZb2UzMmdKNnhpRDVvYkwz?=
 =?utf-8?B?TDlRZW44eDg1STgwU1NDUDFHQ1JYbVk5K2pMalgvLzVDSTNVaVJXYmg0UmNH?=
 =?utf-8?B?S2VhbHJzWmNVTE5ncDdnMFBlNmFGL3FJbk54VGZXczVIMzF6VWxoRUNEY3Va?=
 =?utf-8?B?T0xEV1YvMG5ZZTNvNnJIeXBZZ2JyTzY0cWtoeFRWeEJGcC8xWm5xcWRlL0VL?=
 =?utf-8?B?ZjlEaVB5Rlo4TncvVVlEU0VyZXNkbVJuOXJ0dTFmRnRzMUxiQmVrM1BXWG96?=
 =?utf-8?B?bzA1ZndPUFZjQzMvRHJTK2hXaDZORnQ2MzRCRUpiT1ovdDhPcG81aVJNSGk3?=
 =?utf-8?B?V1V1Z0N3dDV4dWtRS1p1Z3QxdEVtakdtRkNhNEQzb2lNaDdtUFBCVVZ4Z0pO?=
 =?utf-8?B?UjQ5SjdNYStPY09xQmQxdkYwNW9NLzVXVzEzTi9qZ3Y0cXR4TWdXQ3YrNXBT?=
 =?utf-8?B?cWd3c01vVEY4eHFPNHpFSlJ2c3lSRjRuRURiNytJalpHbm84SzgxSERhUXpo?=
 =?utf-8?B?NEZCaStSREdyMlR5U1o5ZkRCQkpmZ2Vyb2JUZVp1UnlnWUZyc0FDckI2dVZX?=
 =?utf-8?B?ckZPdHB6NEJQUUlRZmxkUlF1V3kvT0JFSjlaTk03ZmpKd1Q5cHo4WlQwTmJL?=
 =?utf-8?B?bEdsVU9lNFFKQTMyc29mbmw3b25sV0pDc3VXMG9heUtOdjYyWjEwN3dyUndl?=
 =?utf-8?B?TGtKNzZXQTdVTGFUNXlLSE1VYVh5TEwvQ1hOWEU4TlFFNE1oUjFkZFZ2YStJ?=
 =?utf-8?B?QWxwaHJRYVdRTGN1NmRreHRkUFUwc0VNcFpQZU5wbjYyOWZmeVZVSjE0cjBB?=
 =?utf-8?B?TEd4SFVBTDFwMHJVaHR2d0g0T2NaWXRHMS9ESmxDR0E5OUJTY29qUSt3eC84?=
 =?utf-8?B?WmtYY2dDaU1JQlFpQkNtSTV2TDFQN3Fxc3hxdTBDeHNnNWRuZnJyeGJzTlJ6?=
 =?utf-8?B?dFE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f234590-ecd0-427f-0bc7-08da89ff090c
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 20:42:49.0140
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wOhp3Sstx6s0mC8TJHs0gQIgC3d2KVzUWUHO3TbtMRD4IKuCyPBytW2rtM+xPog6ZUnBy0JCFuf5Z3ZdJAS2TsdkmORZIAkYT7plzhA7GB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3208
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-29_09,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208290093
X-Proofpoint-GUID: yKX40MHxMeZnGFhxvRw7BJWzsN3HYgRn
X-Proofpoint-ORIG-GUID: yKX40MHxMeZnGFhxvRw7BJWzsN3HYgRn
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=zsgR+MLT;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=xvroNu5D;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 8/29/22 3:00 PM, Uday Shankar wrote:
>> I hit the hang below and it should be fixed in this set:
>>
>> https://urldefense.com/v3/__https://lore.kernel.org/all/20211105221048.6541-1-michael.christie@oracle.com/__;!!ACWV5N9M2RV99hQ!L10OSfsVJ6Bssm8eT4oRSTBOLfCKp7-4cM5kGDF4aXnYuBfB0xlTEzbFTvMMw0nqmbfLqSpaXVl-E_tVvIc6ZQqBrA$  
> 
> I hit the hang I described while running a kernel with your fix in. My

Ah yeah sorry. I didn't read your first mail well. I tried to do a
quick reply from my phone on vacation :)

> hang does not involve scsi-eh; it happens when a transport error is
> detected by the kernel while iscsid is in the process of handling a
> previous transport error. If the second transport error happens at an
> unlucky timing (after iscsid does start_conn when handling the first> error, but before it sets the device state to running via sysfs), the
> device queues can be quiesced (in the block layer sense) when iscsid
> writes to sysfs and ends up in scsi_rescan_device.

Ok got it.

> 
> I wanted to avoid this by just removing the write to sysfs from iscsid,
> but it seems that interferes with scsi-eh flow:
> 
>> The user space online code in your patch handles the scsi-eh case.
> 
> So I will need to try another approach. Simply adding a call to
> scsi_start_queue like so
> 
> if (rescan_dev) {
> 	/* ...
> 	 */
> +	scsi_start_queue(sdev);
> 	blk_mq_run_hw_queues(sdev->request_queue, true);
> 	scsi_rescan_device(dev);
> }
> 
> does not fix the issue either, since your linked patch moves the
> run_hw_queues and rescan calls out of the area protected by state_mutex.
> A race window still exists where the kernel could detect the second
> transport error and quiesce sdev's request queue after we unquiesce it
> but before we run the queues and rescan the device above.
> 
> It seems that the most straightforward way to fix my issue without
> undoing your patch is to add another sync primitive that guards the sdev
> queue quiesced/unquiesced state so that we can guarantee the queues are
> unquiesced when we do the rescan above. Unless you have other
> suggestions, I'll try that approach.
> 

Here is an alternative I was thinking about when I did that other
patchset.

I think we could remove the session_online_devs call for newer kernels.

The session_online_devs call was handling the case where a scsi cmd
timesout because the network is lost, we run the scsi eh, that ends
up getting escalated to us dropping the session, then iscsi_eh_session_reset
fails due to the replacement_timeout expiring.

With the patch:

commit a0c2f8b6709a9a4af175497ca65f93804f57b248
Author: Mike Christie <michael.christie@oracle.com>
Date:   Fri Nov 5 17:10:47 2021 -0500

    scsi: iscsi: Unblock session then wake up error handler


we should always end up in the transport-offline state for that
type of case. When we relogin, then the conn start's call to
__iscsi_unblock_session -> scsi_target_unblock will handle that
case and set the device to running. So we should not need the
userspace online/running call anymore.

So we could just add a CAP_SCSI_EH_TRANSPORT OFFLINE flag to
the iscsi_transport->caps struct. When userspace sees that then
it knows the kernel will now do the right thing.

The drawback is that we have to patch userspace and then also
get the the new CAP_SCSI_EH_TRANSPORT_OFFLINE patch in the stable
kernels.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/644defe5-2a33-9eda-ff7f-f600e635a48b%40oracle.com.
