Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBI4U52EQMGQENMGZ53Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7A3406FCD
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 18:39:01 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id o6-20020a170902bcc600b00138a9a5bc42sf1584954pls.17
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 09:39:01 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631291940; cv=pass;
        d=google.com; s=arc-20160816;
        b=bioyIzGhthLc8oM4yMSf+EDT6XRihVgagMbkgFP8RmqR6CgxoO6WJw1BN9h+3QCW0m
         MB+e0zl4I3Ksc/vtMRcmkhmyhW4VLNUXyT5ljKVTco9DHkzU+3RDkB70MyH//bbQ3gfP
         GqxMJ+S/nJa7cn3nMf5IhCmboZY0I7CN8r8DguJz0tRIxR+uWagLMea3FEeLeSWoHzGY
         O9rnoAgq8/AFFbpsV59oLZj4SD3zQypyfAqWZsydd9E5HzZkVBeKzxlbDgBf3TBt6kTN
         DdxUT/cH1dJg0+aGNv2QazshtJROxygCHN7/5DAhou5hK11i1RtnINkCuUC9/W8U4j6W
         dvrQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:to:subject:sender:dkim-signature;
        bh=LF/w8S296DCDuB10zknXfFDN0LSWXa1S/7/ypUSBXmI=;
        b=UO1ddTAf++J3fnStzRZpcIldzeuQNyVKE8PDp6gm3/BIBSHQogun1XuTV7BmiVbhJT
         /FLA/l9WzZngn666qc4ZyJgeepQYqXIYaMC9NUQJmBIs6/I0TXSRkfZ/vVPm/bXw9VIK
         LwGJIbyWHVNmrk5Zloqjaz4nGd0Fe61urjayhAAiLucP6akfoY3dM0JUVN8XjVmvFrOL
         VSWbpz9DRDLujO4gpiM3Kiex+PiSqR6wD1hZcElHY9dnhtDWS0+DVo4FSJ41X3hnYGYa
         W819AeZk/T0WLZhlxAgzT4H13SN/W9Q/P0R1Hj4v2q+jZrjt5voxiDH0UKXq4G1ppLsI
         dmvQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=PfMeGmSO;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=DwF9pA9J;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xPfc8aUK;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LF/w8S296DCDuB10zknXfFDN0LSWXa1S/7/ypUSBXmI=;
        b=BnPFF0FAS6qAj2BUDqrhA7sANpLlaZEoDyUqhFJioq/10AO2iP8wreKM8PLr9M3plF
         m+RSt/AqdrwprE0dp7Y3u/4owfTY/cbRj2Z5gGZTWMQEr4/jYfTS4h+GBLqG+IV08Goj
         q8/TMevRRo36tLEnUVdB4KI02qZnm1oSxHSrN0F2SRRWcRlL8spMNH/lFvsEBtdUL+6n
         3J7F/clXrDuDtSha86dHIX80S2+30NKKL/DrTRJKlNupF7DuWbgmk/jnzBl1B/pbhsCe
         dWQG0ywI2TYiRALSFrUNt8hLTXf/ZPDPPJtOEf6X836nSO8kZ2TX/CJjTq5O3yFzrarG
         xGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LF/w8S296DCDuB10zknXfFDN0LSWXa1S/7/ypUSBXmI=;
        b=ZatfIOLPpQSgUwbWDV9z4HA1P8+7YgzR8ahM6mxYsChrq1taBBouDQpeexWnvlJp57
         O7wnRxeN1XFUpwIqSoi7GxcHshi3/I2lDbJpA1lNz+EnjqIjdX+aNNiFVytNvfBGY9Zg
         1Vg+XczTSFaAHhm+ybCERFIL5UXdvKjQytPJ3r7YdSiY46eZRt++ub7fxF5S8kjVsevR
         /aIcfO6yWSXmN8iY+i/KpoP/jQk24cLOn0RbcEoH2Z+vtPCMq7Dimwk8HHvYV7kRxsJv
         kg7H8o7c/v+BFRX3FjBPN5owVoftulKGvihXMcCenYxOLhwLzExXWfO9koLdRd70fOKb
         34hQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532TcJd9s0r5a/qnKDKi7q4mcQlSUQH2UEqF+ibJzWBgDgibPwyQ
	o+7OjngIcwETcCE/ZpYiS3I=
X-Google-Smtp-Source: ABdhPJx1MV59HOXwNCW0XZlA0bj1P/eA49I6ZWJILEz/FrWZvWVsku9+OXtucIMfpkrp6NxnYJtCyQ==
X-Received: by 2002:a63:338b:: with SMTP id z133mr7803683pgz.318.1631291940084;
        Fri, 10 Sep 2021 09:39:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls3480265plo.1.gmail; Fri, 10
 Sep 2021 09:38:59 -0700 (PDT)
X-Received: by 2002:a17:902:db0a:b0:138:d2b6:4d1c with SMTP id m10-20020a170902db0a00b00138d2b64d1cmr8321997plx.72.1631291939427;
        Fri, 10 Sep 2021 09:38:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631291939; cv=pass;
        d=google.com; s=arc-20160816;
        b=vyK0JaflLZEi8aWw8J0q4H+f7hbKc11CgU7a663BcFOGB2/6IYAeSbGQOl0hVRgolW
         PohVQFCYdBKcz9U2Y5rSA5eXrGVpUSeP0tRYJ/Wcc3u0iJFzlJu4yzZ8FwBG8vOlBgHt
         ndplHaj/AGSk+7rVaAVcqHG3UD9IFRo1w60eox895mx9d9bTU9NPdac2ipO8qyTeE9Gf
         JEBMOF5WbH/mRvUrMEImqtYWMM6u7aInjlf0p/z+OBiSjsc24U8rhTdtJA0L6ocrGKey
         /ykaPs0U6v+XPSrXQby2qG9H5gv6PxDGj9m0Y3wZgxZtkCN18ZqRx7dM+kk2cxkeI/yB
         rwpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-signature:dkim-signature;
        bh=ermdxKvFV9JWJbi2XHvPVkWjU5DlOiI75ae1Io8dAGA=;
        b=IzQP8c1s5FJb6aolqg0xUx9LDAqcsSeq9XOuyaRT8mIoILySwafZXsNb4jcsk3RjTU
         1ceHZ1Nf8wmlP/saNexsODTOhxo+3ddtUyqwFGjAG9FUK0ieESxvNoCFkr9epafS9d47
         ki7jaaYpXllGJk9Zv2yBH15tf1mQUIVat3B3PMu940d8rEBasR+F6eSYNOZT+6wEZEMt
         HF2LCHdyV6pG//2BAXCZIXH/W0D5lu4Vo72K0leaZD1jzbWxJvPYOwhs/kG/cOD92VpJ
         UNtT2N10PY18o59CuqewFJ5qX/un3J3EHSTUYGPEKXIWaszU8ETQiA783/MPwNq6+R0X
         qzKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=PfMeGmSO;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=DwF9pA9J;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=xPfc8aUK;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id c6si489429pjg.1.2021.09.10.09.38.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Sep 2021 09:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18ADtSXO013678;
	Fri, 10 Sep 2021 16:38:58 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ayty4afkv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Sep 2021 16:38:57 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18AGaAVs020523;
	Fri, 10 Sep 2021 16:38:56 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2169.outbound.protection.outlook.com [104.47.73.169])
	by aserp3020.oracle.com with ESMTP id 3aytfyhm12-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Sep 2021 16:38:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xo9fgS5GJoqNKo8DhSZXx2CouMt7WrfXSTN6Oy4txVr0notTiNUCU9waqT+oC4iQ4oQYz2nO2Ig1gkFjUB8VKpZBsuaOcNeWTtnG7/ueleI0HYXiqFOWyA/GDL/FI6hMvvTpIVbnhKF+fN5tR8hLt1Al5zeONU33ehdsRSIQ61JieghIW2/XSY6SUB8sOxKlyt9FIdF2Jtx/4yrbIE/RZTJkXGHN58bQGi8+o95QfFWX1STiz9Fp2eBA5Sgt/rdpM7k1aw+fOkJ6+5HPiuF92kWB2verKg/HPKmTCjWWHVAg2i1w/DSjwWvQjnZ70uMaPHquwWav03fWinMHtB65/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=ermdxKvFV9JWJbi2XHvPVkWjU5DlOiI75ae1Io8dAGA=;
 b=fhgrPJp7M9OCX7/4iTWY4TEOK/8KTkYJrNODOmEmYmMznbK0gxCk9wOrYmsiXIZ0yIDVnuop+jqtUVdPPqY0lufgGXnzEl0Qpo5B8VZKZpteSTxKB8r6J9CQexZEW33t6ouFFajbRG7bjYHarLs9uSfC9kbsIdsbwceBiPAkdHJ18mDUDLTjjMKh2Yatv0N7u+aVrC3Xvr+eil+UlvaHmbbfqYfHfysTMiwKV2i/en3WrWJs9pywso8TmOwAkEs40JilWUd1W0vyDNjRPs+eBOQWl0Snfy97rd5J9uemqTK2hpYwPYcmEggvSXli2CFOxcYRM1x3w87rRzQS41HDNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3573.namprd10.prod.outlook.com (2603:10b6:a03:11e::32)
 by BYAPR10MB3654.namprd10.prod.outlook.com (2603:10b6:a03:123::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Fri, 10 Sep
 2021 16:38:54 +0000
Received: from BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::5881:380c:7098:5701]) by BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::5881:380c:7098:5701%6]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 16:38:54 +0000
Subject: Re: [PATCH 2/3] scsi: libiscsi: fix invalid pointer dereference in
 iscsi_eh_session_reset
To: Ding Hui <dinghui@sangfor.com.cn>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
 <20210910010220.24073-3-dinghui@sangfor.com.cn>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <302af74d-5b72-5b2f-050a-33f0978e321f@oracle.com>
Date: Fri, 10 Sep 2021 11:38:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210910010220.24073-3-dinghui@sangfor.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: DM6PR12CA0016.namprd12.prod.outlook.com
 (2603:10b6:5:1c0::29) To BYAPR10MB3573.namprd10.prod.outlook.com
 (2603:10b6:a03:11e::32)
MIME-Version: 1.0
Received: from [20.15.0.204] (73.88.28.6) by DM6PR12CA0016.namprd12.prod.outlook.com (2603:10b6:5:1c0::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 16:38:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b23e0238-5e40-4dbf-b388-08d974797a43
X-MS-TrafficTypeDiagnostic: BYAPR10MB3654:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR10MB36540CE68AF9A7B5A52AAE94F1D69@BYAPR10MB3654.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:161;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gbec1mc0nAqLb00ePe3jVhteyU1psMlAp0qJWS3GPK2sXQqwomc+bZ1Ynu0k5FV2pw2hEuGtsrL5oeo+k/G9Bv85UlWA3KrwQaW640k3yMSyvuGYZAF1TgtDkh4er62r8DqfgKxNBq1lioGgUbzgBUHKm7FSkuTNYelJWRaccyD7Suqukx3NMqUiMoymjWolQ0q5sgBdBx6UHrgJCZvnvV8bA0eguZAvPy1sTFhojciKzuEayQRf5xeyn2X5fA4SYouixGZVD82SbWwT6HYmYtym4EI9Mwg6jA51Z3wvaNaNU2EEXvRLaYKIR80KagXUZ8tIsI88QrBKi6HyHWFP6lobTUdFVkCczvvcsQB4qn7gAGW5xM2O68mmkqKfho+QRMr3cN9hUcqVuILDK3U1i8YMwviyKoiiNstR7khW/9sFHzV1jsOj2ZpRaqDD6e384xRlUQiwVCsWGN9WGPJWfSd7HJWuxF/mB2pDLsRluQL6HJssar0a8u1ECnPmHxeihbja8Dz/xN0ClNSIu3C6f20Eq2Q9Fp74OAinR1qoKBECwYXIudUEDJcmFQF13FjUNXCjhBy0luKe+VpgUs6+bgvBouzHLzhfQu+fABynvW+VnrGKd2xoufI0KGv+I5/8qzi9iAGKumnGfcMF8jS7zQNQc0R99LbhqSbhtkUysRqLsPjdQyk7cjlINSxJbiHi+Q/9oqvqrrskT86oNMY4C0CmcmEVP3OEj6APYDsBmaTrD8ETGVIDI9y6vFOYXzK5gRRC0vQY2JGc3o4AHeJzAQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3573.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(376002)(39860400002)(136003)(346002)(53546011)(8676002)(36756003)(66946007)(66556008)(26005)(83380400001)(16576012)(186003)(66476007)(316002)(5660300002)(8936002)(6706004)(38100700002)(31696002)(31686004)(956004)(6486002)(2906002)(478600001)(2616005)(86362001)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVBvdVlmZEhKSmQ1c3BNSjVRSFpFQjJSTDJKRDllRjFtYThpUHZUVEFGOFZt?=
 =?utf-8?B?QkV0d293SndVb1hmbVkvcWlqSWpsMGNQaFgvUFZNSytnUDFWQmhCVmd2cGJN?=
 =?utf-8?B?NFJ1MTk2NXpTdmEvS2ROaENsSmJrYzZUM0xKdUdHVUVmVG5PZTkwd0ZSVlJ6?=
 =?utf-8?B?R21kL2hWTWpwTzg2WVJFQ2REeFR5WnE3YSt2VDEzZzZQbmVNRThtVWplVnR5?=
 =?utf-8?B?QzVESGZqenRqWDFUMUxmUklqT1ZQbWYzVHJpVGtQd3d5THZ2SERpa0grbWJK?=
 =?utf-8?B?T1ZhN2M4bFNQNnFKc0NPMzVyYzJtd3EwQUVDaFM4MEp5Y1hvUENuQW9iZTRC?=
 =?utf-8?B?K25CVzFpSHY0WC9NZUhDQnNOczltUmRuYms1OW51MmtxdGdUc2lPTUdHS0Vh?=
 =?utf-8?B?N0k5aDZNZWlKUUJHVDZUK0J6YTBrSVQ4ZkxJNnNwMlhrYzFlUndPUzNPZlA0?=
 =?utf-8?B?eEMwZjZMdjNBU0tWSUhhd0tHVFBwbGt5ZENhRm4zcHRwVlFPZWhROWErQmJM?=
 =?utf-8?B?b25UWmxTTE9Uc0dMSThmVEdCTWdWQkVqSmNSVEpaVjRIdWJJekl0Tzk2WjEy?=
 =?utf-8?B?UkE1OWd3V0FKektLU09qd0dIRWpzMHVTT3JGQ3JEbnAvWjdYSkxVTHRSVnNz?=
 =?utf-8?B?cVFSS1lXV2lHVG85Q1hMMjlQeUJSTzZZaXZjYnZ4ckovUE12N3d5Sk9tL0NV?=
 =?utf-8?B?bW55U05VaHEvUyt5SnV0QzZtS0o4cXlZTWpLK2x3T2ZNeUdOSi9ldU1tRlhw?=
 =?utf-8?B?THozUFA2eDBhOUQremdOakh5eTdsNlMvaGFsRHFlSU84M1VQZndYRWR2MVNt?=
 =?utf-8?B?d0FyWXlFVytMVEhXL2FtQ1MzV1c0RG1MTTlZbWJ6c3NGVXovaWJGSlNQTXp1?=
 =?utf-8?B?Z3lGdzIzc000ZUlLWGZFdlNkMnVoY1NyWE1iZFUrbFAyN21vTmtsQzVWNm92?=
 =?utf-8?B?WmhhZ1hjRkkxcm1pamFhMFQ1YmpoS05USzFVSk9YSVN1NGd2TmhXVDExNVVi?=
 =?utf-8?B?UzgzaXJuenhwZHBmRDFVS256OEI1dUdMYXM5TmZ4Mzk4N2NZbVhiM1RkeE5E?=
 =?utf-8?B?NjUvc054eFpiM0ppOElERzFXWVJFclFYNWVUeEZya3d2bHVaa2pIaGMwV3Uz?=
 =?utf-8?B?SllNQ3hHNjRaV2VlNS9JZG5GVVJBOFhhYkhyd2MyZHVYdWJLTzA5SE1NSnk2?=
 =?utf-8?B?QWdEUjJrOTk0MnFDcDdMU3Y0TU5rUkNvMkoxNHAwcHI0a3gvMGxINEdQY2pU?=
 =?utf-8?B?ZFd5RVoxOWRYQk9MWjdmTGNwcW1Fb3V5UXBwd3lsRmg4MW1oWUFPOXlhR0kw?=
 =?utf-8?B?aFlMMW5iKzdFSEtsdlprbXpiWElaR1ZpOTBXUkgyd2lIUGszYjYwZ2N2V0NN?=
 =?utf-8?B?dXMrUTZBMFBEUnl1cENsN3JOUmlObmdMeVpaNThZOGp2bEtVekx2L3UvSEdN?=
 =?utf-8?B?RmVYck9YcUp6QVpVMHZScGlvczAvWURXRFptMEZYR3ZlUU13aExIbFgzMmFr?=
 =?utf-8?B?b3hBL1NYem0wRGNZT2V1VFdzT0pIYTJOc1ZZNFhMYzFSK2ZNT2pQeHlqcWl0?=
 =?utf-8?B?dTE5bllPVE45ZDE1dk5FNjRDaUlsVDlCYXNld0tORC9hcGU2ek9QaVFUVThz?=
 =?utf-8?B?cjdvcVJ3SGJ6akNjZTNrTnpDSGhVMksyTVdBaUhxdldBaU91YXFJTSs3WXBB?=
 =?utf-8?B?VlJrSU4rTXNUTkZ4MlZvb0hWL296eXBkVjRWeWdsaWYzMWw5dlBvd1ZPWHRJ?=
 =?utf-8?Q?hxAl83pcVjszTyfCd/G55keBOQV4GQs5W710r8h?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b23e0238-5e40-4dbf-b388-08d974797a43
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3573.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 16:38:54.2107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WsgoDcL5NwhQP2ROl2zUkCHM7VwyLjVK5fhDSGD0zosYvWEieIWh46vCwEC2z/Itx2+G5UjHK8CYXcMCdZjTLP9G22xElit91CM4umWsPRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3654
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10103 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0 mlxscore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109100096
X-Proofpoint-ORIG-GUID: qhTS5LhwpI8AFUlHbqJuWVrlcN-R9YR9
X-Proofpoint-GUID: qhTS5LhwpI8AFUlHbqJuWVrlcN-R9YR9
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=PfMeGmSO;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=DwF9pA9J;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=xPfc8aUK;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 michael.christie@oracle.com designates 205.220.165.32 as permitted sender)
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

On 9/9/21 8:02 PM, Ding Hui wrote:
> like commit 5db6dd14b313 ("scsi: libiscsi: Fix NULL pointer dereference in
> iscsi_eh_session_reset"), access conn->persistent_address here is not safe
> too.
> 
> The persistent_address is independent of conn refcount, so maybe
> already freed by iscsi_conn_teardown(), also we put the refcount of conn
> above, the conn pointer may be invalid.

This shouldn't happen like you describe above, because when we wake up
we will see the session->state is ISCSI_STATE_TERMINATE. We will then
not reference the conn in that code below.

However, it looks like we could hit an issue where if a user was resetting
the persistent_address or targetname via iscsi_set_param -> iscsi_switch_str_param
then we could be accessing freed memory. I think we need the frwd_lock when swapping
the strings in iscsi_switch_str_param.


> 
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> ---
>  drivers/scsi/libiscsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 712a45368385..69b3b2148328 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2531,8 +2531,8 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
>  	spin_lock_bh(&session->frwd_lock);
>  	if (session->state == ISCSI_STATE_LOGGED_IN) {
>  		ISCSI_DBG_EH(session,
> -			     "session reset succeeded for %s,%s\n",
> -			     session->targetname, conn->persistent_address);
> +			     "session reset succeeded for %s\n",
> +			     session->targetname);
>  	} else
>  		goto failed;
>  	spin_unlock_bh(&session->frwd_lock);
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/302af74d-5b72-5b2f-050a-33f0978e321f%40oracle.com.
