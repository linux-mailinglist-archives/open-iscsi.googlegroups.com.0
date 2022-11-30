Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBCO2T6OAMGQEJJ3GJEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 1479363E5D5
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Dec 2022 00:53:49 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id b6-20020a170902d50600b00189a5536820sf5419337plg.16
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 15:53:49 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669852427; cv=pass;
        d=google.com; s=arc-20160816;
        b=IxhWtojwDHmUJrSEkqBiBK15AlskxkQxvR/OnSLuIW2KrYT19/3jFo7NjU8pjcUzM5
         7LGqxSzVkNcZ46vjLzF+WXjF2qbLuAoFxvsvDpjOsvcSF6vyNk22q6QnXveyTyrRNHvB
         ZEZSRWWDdjq/IZZRuroPnd3kLhqFyK1IH2aY2tma1TFA+YBmVYQEOikPYCEPfb/rc6s2
         fo2cEN0oHLN69pb/pmBIEHwKURki3DG0Drb+xVb+XjR/Z9bYI2/1Op+s4JUOtsKt8BQP
         J9PidpZVTRQFJp1xrtnxcqVGCiAr2CiCFYhO9eb0jLsnGir1IXy2P0EQ+MxWcOSCxDO5
         qhFQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=dLYcVamZQjSfggcJ0lL8x/kTh2MgReAG38LTrGEoSrA=;
        b=j56Zz7jAv4V1tgunCNHNREJRjb5lDUeKiYZSaDMH0o+IMJ8102j1JU+r0PLgIUNJQE
         BiY6ZKDyQA05mCC1iJw7+nA8ti9sMZVcFumNwFxwkVleZwN6RXmjRHnxtDeEbgWC82yO
         nkVSAPNdEunKiHvBghHFyZQJ+jXq2Gp0Ao9RnQ3Pafux6cGBAxVmXlAz2ZSM9pTfAxuc
         3sHWGYmlDRIqYFRNhHNs6JGA/fKV6U9/Cyqawc06GcRHKgOqdq1jCdfW3y8c/SpSr2AF
         uHfYKQdy3nckZtCeS9FYVVrcLoROeCaV8W8/SV2mVyktKpPGpjmOPUmznr6izg4qciRT
         /PXQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=WGR61dp5;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=bF2u7x7X;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dLYcVamZQjSfggcJ0lL8x/kTh2MgReAG38LTrGEoSrA=;
        b=n4OicGdu00ByXJ8bC3uAA5F0kuE2czaxH1Nb0zynrzP2JO46zqDLuLzgdHVcfHyb51
         f7FSJMMqBZK7nkumMpyEb1uRiNbpSWyUKOCzlG1wI/BknQJ2Akhl07PPHauK7ToaawQd
         NcjKZn8ol1xIFdHUesxvFTu4JyfEQVtHwJDFDK5ZzWaqjtoDMcno0/LWlw3H1AGkW9pm
         dzSeb02gAbhnpRCrmrAFlVsrocchjW4kpxkc7u1tDZ8ptZtvKAy6laLDU2EJx30Rk5pG
         /e2474uw74dNL8z1LPaw8JAr3EmkvBKYz2LqPkXuuvxUoTs1WZ5iWPemCZbPVLX29Kx4
         +fYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLYcVamZQjSfggcJ0lL8x/kTh2MgReAG38LTrGEoSrA=;
        b=IpVRLujaCYqa8jEvQWrjn1xtUx1raJ7tuRdbHzef/yZy6WwsmTeY0p94b2bfkZ4k5j
         r6itZmB2GkqDd8OSwYqKe/6Xy3ppjvfzecwJpPkhhj4v6BRqG2gWh56Hznv654+/iikF
         +tVBKB2fVUo4pQqmpwPHPVu1OMTVeI4FyQunLFT1R6f/3Y50zgg/+yGswJKNoaMHiF1p
         Fyk/fK4/J1OE7/vxP1vTerN1axZFWH5qY7sZgBwHwS/+wuIb3h4Ckr2VEGC9Tpe/Ahsx
         uOBdG8kZfmX4RQsw1/AF5XHIm0k2K+MduiPINIqIFVrXkU60Au1+yOVGTcFOmpcw1/9L
         j0qQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnKUk4e4XaTVxZGV/Wc3E0SXAmDqeJpXS8fkpJpO63j0vnG/Lu/
	UYMBV4nc9DKbjfjWFT2qr+M=
X-Google-Smtp-Source: AA0mqf5gwzg1MbSuQZoJrF2aEgsUBVej/Jh9tAoCdu2CyQDJYUJbCUPx7hcfz9yMnCfHK2jLUevNDw==
X-Received: by 2002:a17:902:7792:b0:189:7c47:50ad with SMTP id o18-20020a170902779200b001897c4750admr21680874pll.10.1669852427318;
        Wed, 30 Nov 2022 15:53:47 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:8a88:b0:219:4318:f24e with SMTP id
 x8-20020a17090a8a8800b002194318f24els263724pjn.0.-pod-control-gmail; Wed, 30
 Nov 2022 15:53:45 -0800 (PST)
X-Received: by 2002:a17:90b:4f45:b0:218:7146:6b3e with SMTP id pj5-20020a17090b4f4500b0021871466b3emr68674139pjb.149.1669852425238;
        Wed, 30 Nov 2022 15:53:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669852425; cv=pass;
        d=google.com; s=arc-20160816;
        b=WmnMKhMvXPYHL0xgSQ7P/sTvXKSbm3yQjd4vUUy+H5deO6R322pLu3P1j5fWJEiocP
         EdkaKt3PvdGDloFBqdX70/Bs81xPFSb+pJfxyEXXK7YmZVh5iOKYntIsOqqqtWUk2Vid
         yJAfhLdZusNvHs0Txm+odwBlB+LFVUqPKVDvm/8eMufKKjtTQfusljpVi5KtoExXqo4d
         cPSZHy3UMsuLiZjMjHcz6koFVhVxkD3a6Pu2IohAy4jlyAtKZpPkmexVezQvcZoPsIt3
         AbmZBBxWbky101VKjxy1TKXqinS1mCgKwYlW/M0QfwEjI2mhSwaZvhEt2f3kxYEMyKKE
         ZDwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=Xu5e9ZKgH/IyESn3eGuvRJic+DQM0g1avakvN5pwbSY=;
        b=0Lx3eZDwF37MTgVR+650TmytpXBQieNI0C1U+4teMiY0sYIhh/ELyy5hUcfJ/5FtkD
         9FI0CifdHT9dGkRZS2bEh0PvQojVQsX9mehYKQcbDj7Hi3KVPxpLje4B19jVTYcFLTrZ
         xRpWLZtz4AwPBEOhFzAN2ZSuJcmw2pvc7zIHLmjR1sTF6HDB05OTQFo9dokIPqSEHLI0
         hjZdT/12FssvMC0BM/9t+VX2HSiUJGoIY2a0jZ9Un29Ea1P+qeOZJmYH8nYVP1KpYA90
         D5aaW9WG+o7iM6c94SkusVjK1Q5TDcW/OIa700c7sMjlmpqaExvKSilYcyQf9bhXX6wZ
         gZfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=WGR61dp5;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=bF2u7x7X;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id l1-20020a170902f68100b00188c5696675si182201plg.6.2022.11.30.15.53.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Nov 2022 15:53:45 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AUNdTuM007190;
	Wed, 30 Nov 2022 23:53:44 GMT
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m397fkwuy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Nov 2022 23:53:43 +0000
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AUNBAap016203;
	Wed, 30 Nov 2022 23:53:42 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3m4a2kq5cr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Nov 2022 23:53:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMK3VxNx6ROw67tMCA/Ew525b89iD3QoPq/aSHLdptNycycqY6NK8y102JZm8rnZQLWYNcwyalJg6nF8cMUyiLGnMMMIUBSkNZjm/H9ccRne5HUQaMJDRnTEUVLxKITyJzdCN0LoqumwSbFfsEIzZ9BjOp++XtrBBJ9X0Ly3ipUuoIvjocBelG4jg0RbwAI6hfJFD2doGUURkJ/35hhLJ+G79sosN12sBaJXBeFTQQbFr5P2TzNuOMZKRwjEtoRXiL0pOLgVCxUvhzROgGi73Rbm4ktPNJoSASuuhZ4GENi4ns8Wxvzu8Bw24yzgYo7DDDrz36YBSgoEpiPiGJFEwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xu5e9ZKgH/IyESn3eGuvRJic+DQM0g1avakvN5pwbSY=;
 b=m61VsfFm28gRJQAqK1wYDzDP9OiewqZsgvg3amSAeQeyuPatQPCEqaHm/NQHcpMelsWejl3x0QzNTLWZn4QASWfPDzsF7iaLDEvEpq4KdMBzkvFCtCHqmzaarLMHsMCLl1kV6NeeecV5aJXvd9328DNd8XWQRpL3PFWzHSIxaHC7WvWpBxWSMPmDQE4qddgvMOSH0c2wiGfjG1n1iyXhU0LY+JrQwnBd5IfBYIYLVbGATpToYBFGVGuiExDGGj35xyUYpTKumVnZBrFetp7U4FyRoWRTqdd+zBlT/zV+ETCYvVekVo0PSzLYvdcWXK0BUPRMWDyuG9+/viutQ2h1Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CY8PR10MB7337.namprd10.prod.outlook.com (2603:10b6:930:7b::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.17; Wed, 30 Nov 2022 23:53:40 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::2dbb:4791:5a67:4372%7]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 23:53:40 +0000
Message-ID: <905da4a0-3ecb-9bb9-75f3-79f7be19599b@oracle.com>
Date: Wed, 30 Nov 2022 17:53:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
Content-Language: en-US
To: Lee Duncan <lduncan@suse.com>, Wenchao Hao <haowenchao22@gmail.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>,
        open-iscsi@googlegroups.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com>
 <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com>
 <5ae1b303-75c8-1dc8-d631-bff6db53081d@oracle.com>
 <9ffb9d42-8ae7-6547-cc5c-1254410a999f@suse.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <9ffb9d42-8ae7-6547-cc5c-1254410a999f@suse.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR18CA0021.namprd18.prod.outlook.com
 (2603:10b6:610:4f::31) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|CY8PR10MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: cb696ec5-2c95-477a-8c41-08dad32e1adf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pwHDip2ET0N4PlAcKMHBq+mear3R70J7f+5HfAoWstOLrxWyQ7/NrEiWEmCmLvKZQl0Y3fBtLtFJFBfVpOSVu0BRxxNSSokUPZx9fwmqz6tc5gXVXhajar2VQx5QAWvZ8EOFsm9oRPSjS+PmhLrNI2RY0cQ7KvrHRvQr7RJhGDMEE2z9oY87nrsT0wYrtyxUDBzAa/dHXNMHsWHjcc56jKA7ofJ9Ih2wuM5mpQLRIHyBXVMvkq4SJBaB4NXO3GF9Pfy1ONCgUKguZz7+b8VFrlILd2ZKqx1U2hD1x8jATQV1rxpXky3CH1m9CHAEKAqSKRWidcqQGbeqMFGm+8dpx1fc8Wkg1xU6yoRku5dBhsepZEWrFv1G5EL5Q4Zdz7v2pyZQkrc2l1719ZZ8NWZ8sIs/URI1ur1xh9SnNe7TujoYCoLmW/g83VO4/p2/w7D+QqWzFK/tpVotL26yDw6DSXlTACtuUYFN4NkMS7sY5qIU8w2VYIq418GHGI1tXeIjHkDlmbZvURjWGk4WYRbjbyzFCautxEHQwJWi6MznNMCGLAoeHX5xER8fHsMpE+Aq5Qt8snD7f2XE0WRn1caQe07YQUrUwquQCjI23unL3KUOSDRkcXhRQtYirpRBSuJ9ga3yV5zq9SK+jxWaS8l7tRPo9+J7mUlYzu/vxTQW4gxN8CGYtx0R3etJFic3bYKzuR2WK/tM2bOdugZ9ifTAe712c4FrjYYsFlHiZu6PXx0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(376002)(136003)(39860400002)(346002)(396003)(451199015)(31696002)(86362001)(36756003)(53546011)(478600001)(6512007)(2906002)(6506007)(6486002)(4326008)(41300700001)(2616005)(316002)(54906003)(110136005)(8936002)(8676002)(66946007)(5660300002)(66556008)(66476007)(26005)(83380400001)(186003)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFlKMFFxaUNQaHYyTFJuSEJnMFB1aFhqc2lqY0FxOXRLa05lVlU1YmNaSkdW?=
 =?utf-8?B?ZDlLblhVdUF4Ly9ONlNUZ0RjRktQQVpXVXVXZFV1QjlHREVHTWQ5SmMyR3U3?=
 =?utf-8?B?NkpEdThPcktrenlqMmdTd05oVUVmcUlRaDk3QUJSdHJVUTdhWm1YQWc1TDdo?=
 =?utf-8?B?bnJiU2hNbnk3dy9kdy9id3JRRUd1aURlRjBYaVlBbldqdS9XVFRub2lpa3h3?=
 =?utf-8?B?ZXRDaFRXb3FaSDNtUkhYR1dzRFVJaTFOaHpmU3crQSt3Vi96SlZBWHE0Kzlj?=
 =?utf-8?B?eVRjR2JXVEtJN0sxcW85RUNWWjVkdmZPY0VONjdrM2lKVnBkRmtDUy9vNU1N?=
 =?utf-8?B?WUVMZnp0WEZzQXQvTTNOYTJRaWFLQkNNNCs4NU1oUDhDRThDazhFUjJHblRz?=
 =?utf-8?B?ZnNJNHRaV1VyUzBSeU5hS3dubEtqM2xSWjIvN1ZXclNsWEdZc2hZS3BEWk05?=
 =?utf-8?B?Y2t1NWVGaU5SNG1iVit0bnJ2aTQzdkJLd3NvcmFTRTVGOXZjY0FrNms1aWVy?=
 =?utf-8?B?SzFqNXp0dUJORDZjZ0RSc21abWVlYmo2Yy96T1ZqbWxyaUVleURwdjB1WmlF?=
 =?utf-8?B?VzcyNTZPNHpjZWQyQWJMcTNtUExhSEZlVE0vZW1EMHJjbUd6c3QvbGlqdzNT?=
 =?utf-8?B?V0dYeG82aWE0T2Z3Nk9POVNVMTN3bEpGWUZZeDFrcHVzRW5EeENiWG9SWVRl?=
 =?utf-8?B?VklhUFIvZmg0UEJyT1VwZGUwQkVVc082Zjd2azRzVjgvcTViTTdjdXhYSExY?=
 =?utf-8?B?eEVKOG5TS2xiUml1UmFtK29CajFnaTQrVy9EVENlWldUdkJFSWZYbVVhaTJO?=
 =?utf-8?B?aEl3TzFXcEtlMDN2VnpHamlpTHhCZTZIUEtxUEE3MWxrQU1ibW5xVGo1U1BS?=
 =?utf-8?B?VHNoRmhYUnR1UXNMT0tOKzJ0UndjcVByZlg2aG82cXAwQklsc1pzZjZrb0VZ?=
 =?utf-8?B?VmJLckFLU1FoeVdGcW9jcEh2VDB6UzJFYXpPc3B6SVV6dmE2S1YwS3BWYnBN?=
 =?utf-8?B?dmp0S0gvRTBrek03M2FVeU4xVHp4cGVJWjJ5Y2VWd0VzRktHZlczeGNYbFRk?=
 =?utf-8?B?RUdBRysxVnNqU0tjeVVaUnovVDltRUFjQmNiVnBtRWNCNDJHR0NycVh4U3NR?=
 =?utf-8?B?aWc5cnJFcmtrNEptdG1obVFGMjhuWXRnYUswSHgrZFRsRHdHZW51MFRFQU9K?=
 =?utf-8?B?MmMvSEZEeHZhcktBc3ZONnF3YnlJeEZpbUE1VnpVSU5qOE1QTFU3VlU5M3ZN?=
 =?utf-8?B?N0NwTEFTTExyaGdySVpyK3h2Wk0wMWVLTFdjUlBVSEYzOHRnSEVudkg2ZHpE?=
 =?utf-8?B?SVpYT2wvZVgzTlBLc25mSnhJZ0VGVWdZSmNVazNTMEVBT3FnSTJZdUx5UitU?=
 =?utf-8?B?RFRjRVpjMmJ2UjYxTHY4OS9CVjBxc0djLy9ZdW45SitoVnNvb2xaZTRrbEZY?=
 =?utf-8?B?YTJ3U0Y2b3hrMnEvMDRjWVNPMjg2QzVaVEg3bWNUUlNJRFhTTVgwcDJ5RjBY?=
 =?utf-8?B?T1praEErazUyM3ZWMkZrR0pHZnEwQW5QQmUxdldkcllIRTh5TmlkY0ZmM3VB?=
 =?utf-8?B?U2dJL1RsdDFEbTZIZ2FEVVR3VjVuN1UvWURraGlFVGhGajloRVZPV2tOYitH?=
 =?utf-8?B?NGFVRkxaV3dCZEJVNGZnMmYxSzVnbEtiYnd5RGd6YlJOYjhoOEdEcHRBaFV2?=
 =?utf-8?B?MFpVYzlaQ2JLV3g0SG9HWnlUd3F6TTNGOGI5UThpSEY0aEZtMEFKTGIzM0Rk?=
 =?utf-8?B?QnRpd1dGZmpuc1ZiaXY0cmQzNkVWeVM4V0lCbUhPZmJIVThlSzlwdStJRkpP?=
 =?utf-8?B?Z0JwV0lQL2VPOTZDb0VPV2NrUUV3NkZ5ZTlRd0s3OEVLTEZRVDcweWtCQ1h6?=
 =?utf-8?B?Qm52clBMVDZJdE1FUlR3QnJlM1ZrNnk3a3pzVllwQ1BwTllYNHErRW4vbSsv?=
 =?utf-8?B?RDcxUXdObUNkMzlYeFZCcnBCbEpvR013bStMRGUvTHRCZ1BrVWM2d2hUa3FS?=
 =?utf-8?B?WmtxNGl2dHlaYzJzd0QxSVNDdkRzRVh4YzlINmYvcjR2UTRwaDh5cXhCNGg1?=
 =?utf-8?B?ZkprZzlxRXhaRUwwRXpzZjZZRXBPYlBOZDlIM2FvS3d3MlNLWUZTU3VyUWkv?=
 =?utf-8?B?ZE5IdUVUUDQrOVVXVjV2VVlGTFNaQldlVVJGai9ORzByNDRTK3MwSitLRDZv?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: zVGpGvQJ1OTr3rDrDhXVJ6GiOqDghRcAkaNSk0NINvEyZXHktf+sQQDLA8nAlT4n2RnCE16QGyQl8aNWW5ah4caA/TxIQtOFJffKUDNFdGgOU9zKjt8r6qNgQ2XCzUiFEDmkoatZNWovfFDWXvBSGxFiqQhPZ7TkdMw8KAKApajc7Ccol5/vDdIswb5LAhyARZKP4HUQi5K1fn6kp+2FYJGrKNWVHF1nCxfjpxUCPDVStYcdJEOpTZU3sF01m046PrPeYNomOx6O8nDRh4lEdJwK3nh2SrhnLOGeONN/P0I6OH9Y2joOEKrKCeAC6YnlK4reEmTCS78vFifvPeOJeS4XGcQSjByta/WvzB5cCejLO8nd25j+/ExbKE4COpdsMhJZRteRhVWeVb/cPQUjK/2FdzwpThRcjEaCc4dN3GZRFjlO//BcIeau3Q9anIXVycgOVXJ0gAiJvw4BmlWQToaT+/aarBCMJqs+4utsIaZRKg66jZaMehnFsAcf83K+IAW7Uf0p5d+o9TWqfzmcr93tPrEwsJpjU9yvXFKHBAnYUyJUvNddDH4A6KjVArTX+TtjhPp/lpnpJ0uAGd9vrfAxh8iGuz7Dq0GOeJrsDicfXbHbtqEqN/ZSivaxHp9jlA6w5QcDXJ3LxCst9sq6T7KShN1GhzCjJdROXDNQ8GzET/FZYTsFOdO/D/MH7Wz/N7bM+ak+a+LcQKFHyL2JsgW8mxk19sBRElmVr3SVJGVdGM7PRl5zkbY+hJTT9jJ0YqxcRzQf+FYxCvSwhbaQQneba5jkvF6aoNes2q+EHxbF/d232vA78jkjyQaBx5rWMFQ/+ww3LKOvqltR+WTGntNPuMr4mNka+yTFUvFL1qUyAezPYpZoaEDAiNgCYl6x
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb696ec5-2c95-477a-8c41-08dad32e1adf
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 23:53:40.4316
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FUfNxlv4USO9kOYB+QBE85hj4IRC42hE9MS+05sDQlytAkb6+CmddCVlwqY4JgJEa5sh9t0GGv4jnxsPZlnQC74/LqYOHnAPk+gEtVhSA0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7337
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-30_04,2022-11-30_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 phishscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211300170
X-Proofpoint-ORIG-GUID: wTlxFDAxpd0boEOQo5MlRZWfu6sM62Pm
X-Proofpoint-GUID: wTlxFDAxpd0boEOQo5MlRZWfu6sM62Pm
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=WGR61dp5;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=bF2u7x7X;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/30/22 5:05 PM, Lee Duncan wrote:
> On 11/30/22 12:08, Mike Christie wrote:
>> On 11/30/22 1:53 PM, Lee Duncan wrote:
>>> Have you already worked on the open-iscsi side of this? No reason for duplicate development.
>>
>> I think you missed his reply where he said he was missed the
>> iscsid.safe_logout setting.
>>
>>
>>
> 
> No, I saw that, but I thought there were some cases that might be missed by checking for mounts. I also think having to set "safe" mode globally is inefficient, but that's a separate issue.

The safe logout code also checks for holders which covers things like lvm and
raid use. It doesn't handle things like general device openings though. Maybe we
want a general block layer use count file for that if we are worried about
that type of thing.

> 
> Was the plan to retrace the changes submitted and accepted upstream for adding a sysfs entry for node_startup that won't be used? Or is the plan to populate that attribute for user consumption, even though it isn't needed for this particular problem?

Are you asking about the patch in this thread? If so, I don't think it's
merged.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/905da4a0-3ecb-9bb9-75f3-79f7be19599b%40oracle.com.
