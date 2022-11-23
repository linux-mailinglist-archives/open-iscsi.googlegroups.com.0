Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBLFN7GNQMGQEA4JVIRA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 038C16366E3
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 18:21:51 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id w30-20020ab055de000000b00418d1543d9fsf3422228uaa.18
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 09:21:50 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1669224110; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOvkCpA8qUm+XQx9z01ZW5OXoLEfCYty3c/UkKSKmbn6eTRWzcyaSRyJUsZxqnghzu
         WxQ1sciqYqtcfkCB+PDNNv21HJ0OTsG0qwLe6OMCWewfyuvHPjnl+jIQXqSpv8tKSiPd
         wO7pQfanM7SrPocU8j8SEPDEW5k1WbssF7KrhpSzJ6yLJU9Zs2MxYmhIKg3v7hAbXtmj
         uLpHyVO0QgmWSHwlWrMf/DUs928srhch+Qwq77LWjeyp5iqHR6UYAiCxs6Y4pzrHZsCO
         ncwBbDs9qDQomY0hN2CiO0zq1Y6PjdA2W2t8s1tyT1ItTCzKOS/KA6+/vUDryg5BpOSE
         bA8g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=nRdjNsHNGb868Fo/3UsAi/3wz+J5/Q6eopIOAA+ymnA=;
        b=0MDPfR/x9leo/m7GZBqtAFe6Guj9p0cGFXRGiLlewMse+O3pqWfnePpZVNwBIer6/K
         MnDZ9R3hxjDFPhe4RHrutcemP0d6arJ0h5HGuc8dKkDLYikz0twL9/4H0iUCjJ6UEmzH
         rwIDplUEpz+KkgT65aiMJtU0rsZUzryyvEcTpoFlmaQ7E2HvcqscOdr5toL6/QE3zEkr
         QCKYhCmsiHYD8g8cBGzwBuHSGuBH21Old69mlC0cqS1Rwk45QDYSrl6RxE9Ncj53zpt6
         q3tHXB0jRAko5NMvnH8oRboLxmpOqcHfpVlPZOs9aNVaVd450IfVGUNAXI5oYAg6Aiog
         kPgA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=MKiz8qGu;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=g4YcjoC3;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nRdjNsHNGb868Fo/3UsAi/3wz+J5/Q6eopIOAA+ymnA=;
        b=feMP5G6HsEoPWfOqk9g2QNtRyihpPYT+loqydzGVqwBIIzThaA4P4UPiOhfzsNQVgv
         5j0ix401T8I+rVafLjpQY9DSp8QmiDrFmmTBIYDEvK24L9OxKYfiJAIvkkmIYItnMXiG
         jDfbqIaBSKpLQyCS8oHzHChlfn9Ehk+c4ecJsV+oCHL7AiqI/9qs10K7GwlTZQIwJGMF
         RNhjzm4wtKTkauqiEktk000NpSUhkMeyhHv5h64XPfHjmYue/Pd5ITrueFDhsmG5epcw
         GhUNkjoL8Ng49EmsQRF1mqmGK46RJK3XG00KsxonbDuwuk6yWvAY35JBsdWtwxmkN4n/
         uHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nRdjNsHNGb868Fo/3UsAi/3wz+J5/Q6eopIOAA+ymnA=;
        b=ow8etcqw360U9fNdBxAP4zMEPxTQUeAcHXJ6FlI8uoq0IIfEXVljfcZ+g6i0f3v0Qh
         cTxWST8Jwo0HPChdX0SVH75lSpP5hARo1kESiDFRUpBa2mRV0MKPTx0Z1UYKkyzwADyU
         POGbzVenKYwGkb63x7NOkqUTm8cqQv0G0j+MhdIEQTUcAxlyNNOii4YkHpSjQqKMzFrS
         yjb24d2rus/vNGmJrjdoMe4bFAjechX4yZT/pSxoxwG3JVQG09oSBO/vliCv7v29s+Cl
         mO36KPRPtGvvvOPXMQ6rZ48DtC+ZnSQhGaj1ABPR1bxFdPNwdRY6KMGi/AB1QhMRUobX
         1iPw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmwecaKGRYwhCfAk7NCFyo8sStR6t5MWHQxwQsxXYdItIr+bm/0
	wjvMUlhGGujj3yNxZDiV7ys=
X-Google-Smtp-Source: AA0mqf4iAfo5vxbrcuK+r95MU+iItb/6De1EZ49+51S6BdLiVJdvH7gCi1jfJzYYjPAscZKz/2WcoQ==
X-Received: by 2002:a67:c50c:0:b0:3b0:6c3b:a8a5 with SMTP id e12-20020a67c50c000000b003b06c3ba8a5mr4255008vsk.87.1669224109910;
        Wed, 23 Nov 2022 09:21:49 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:c40d:0:b0:3af:c73:b1b2 with SMTP id c13-20020a67c40d000000b003af0c73b1b2ls3969870vsk.5.-pod-prod-gmail;
 Wed, 23 Nov 2022 09:21:48 -0800 (PST)
X-Received: by 2002:a05:6102:1524:b0:3b0:5dd0:95a with SMTP id f36-20020a056102152400b003b05dd0095amr5296229vsv.59.1669224108138;
        Wed, 23 Nov 2022 09:21:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669224108; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEYwdsiWDcYRmYi63OkINukFv38XsgykCwPZywkKM5kUFRWF2eGo9E1TFdB0D9GoAB
         hlE6avDrPryqyoc4WCbx9MbTZFJQM6Qz4YL58lief1JtyHOeWDnnGzuGXTM2pbK80FIL
         2kufDi1EovxPYxU21v1hw+ijgQrVE/meyeLfjtaGOFylP/pDBFhRX5578ZrICBDqwBmm
         +YDtWOaiWT4HNw5iBDaXlnRYuAWno0nK6UEoRlPwDgpD460a1Y00pRz47zZZxu1VKLuC
         y2sCiyw2pLQWYsNvWUbR1eBo432J54GBzs2PkBrNvjwr+fWvjROScvt756bbHNwdy2/6
         cnrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:date
         :message-id:dkim-signature:dkim-signature;
        bh=MrtkaH+I68DBQhNwxzWxVQuJSh109ttdTaRDqL4CfH8=;
        b=FdSG1nfKLfg4oVS7srEaTO1FTE9Iz3fUXhMEmy2T6pcvHbrGhhtbewM1DlE+N83PTP
         0KDIPqELORgGYiHS9vIxRB2VRvOBphFAkX8E12knVcXFB+78D+UO8K0Ut4Nm0zwHpSRw
         kpYQghqNe8ElL4OlraHRCDJ98jkzl3HU+Px2EkvQ9v0p46OL1QAv6+kQh09XLAtNq6rh
         z1r/VjRsnZDIDtlZFPx59R2kpmTJOSe7JJGJ9tzc688nerb34L4g2vAIzt5VxiCX1cwz
         CfEh4TZ+DNxZIqFuRp5Xhto+FFrbv1vO0h3AAsb2M/IzvnSJxVcMN7qM+hF+kpu90CpM
         zyBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=MKiz8qGu;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=g4YcjoC3;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id ay3-20020a056130030300b00418e1741f27si644711uab.0.2022.11.23.09.21.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 09:21:48 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2ANGsDgl025969;
	Wed, 23 Nov 2022 17:21:47 GMT
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3kxrfb456x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Nov 2022 17:21:47 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2ANH40s2010749;
	Wed, 23 Nov 2022 17:21:47 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2174.outbound.protection.outlook.com [104.47.56.174])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3kxnkde7gb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Nov 2022 17:21:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MfwFLb6rgr0WYKRUvA7qRY3TM5RnZ5WiWfK/y5wwbOn00gnytOWnLntVlOVM8gXakz6vLnQCQI+OETWIJNCEJOo3l5d+ZQPYPjTih/ChzponCVaSwBMgFv+H2ikkr+r6z7S+qSyC2Nve+vjqb2JvomFp/jFsJBCPZdKXJr2wbqcvZSBUhS7y/WI4EjUnJoArAO1SpsnKfiAvwaPb120GD6fhUQYIfFN6Xu5Mx/BUfinwiZkSCTZevuS/rdmuQng1thG02UNfK5P8/MUVbYgAJyd5jiyMwwPOFcnYlKBkQYulC35L/PYNGaKOkS/s/8ld7od5ZBamxrNGsjWiSV7RYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MrtkaH+I68DBQhNwxzWxVQuJSh109ttdTaRDqL4CfH8=;
 b=JGRygWIbz1qd2SOuFsv9B3r4knB33IoQZhPqIVbLIoE9Fx6DYbxV5IQKUE4Q9ZSTW3/9U1wlANFKAPiUVADlQUpNPBNWr9VzuTzXYWvZ3W1ZcY/5L89kkgRLHgdAi+5V8wMTFOV5AkiUTjHOTTz5oHx42B3K9A1PVijGoxCsLoXxL1YavOXdPikhqgcmxfrtPbAR+jEp+APgZckBUJ/BHi8cZxPB5ge38U4LZ7sWrWVJLLeTVY/e9q2UKccAQgQyWTCI6fr8KkJWN0hQtszElePz3b4mCxcfDlIXLYS044HbhBTO4GngGa2nfjDjWuIAzuBERRKgN4/9nHnofkpWmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 IA1PR10MB6195.namprd10.prod.outlook.com (2603:10b6:208:3a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 17:21:44 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df%7]) with mapi id 15.20.5834.015; Wed, 23 Nov 2022
 17:21:44 +0000
Message-ID: <717da158-5a7e-b478-61d3-3753b0b00e01@oracle.com>
Date: Wed, 23 Nov 2022 11:21:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, liuzhiqiang26@huawei.com,
        linfeilong@huawei.com
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com>
 <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
Content-Language: en-US
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH0PR04CA0003.namprd04.prod.outlook.com
 (2603:10b6:610:76::8) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|IA1PR10MB6195:EE_
X-MS-Office365-Filtering-Correlation-Id: 911408c5-64bb-4f08-bc80-08dacd77318f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t/wUVSIs89zm9uyoWfzgpmIbXDJQVhG7IIvHuzNrBWsStXt9W1CqATrzRa9H6UhHVnLqsRojXTQsUWrFfH+62gR6trA0yybOUkCXLsdBjPcL8tpOxMQQeOChTT6P3BmgJS41zz8H5+AqFuLAfBDLdjQR1AxWF/St2bmA3VoB9ULqt5bMH//zM7ugPBg/kb5eAJNggY1Vtw+3yxiHS43mhAE32k2LTiRdl8xrBOPQVpFVkDyC9HucriFoF9yGDycqBwDDLbJZ4BPpZVCz3+N2b81LUFDdY2PrXU48ZrWNTTYEDQYReUwaybjRfs1hGwdEj0HwhGes65ikJOzdCp3RhWja8uS571QxkfMGqhyoZnqRKt1XCLH0XlzXbj2A5CK1rulFBRUsH/2Mw9wGRBKj6VhgWa3KI305yUEFBvh1N289DhN/ei3VJtXL/wVbvtpKj9urcsYdmjZv89NwwN/dYsMADbSP/gcGabfIC5rTdK+m+bQrgake5Tyd5tAaiAtbG55xRQJYr457UDfhUgYaA1kbUh1uZxQH3M7Asp6aumlvJG1zCqtr3d+Vc2O5ZZDMlZcNnLkopm/mapxDAOktFE/GLeCzBk7dEJDcwq9l9Y1EeT8ttbXzPXDCB/X0pdt25ZumbFWqM5NEgDZGItgdIa84p4Aw/Dnstb5m8W/pqMOfjO2VzOJYjiQL4S86iWF4eQmAsu2FMWz0nQFyUhkVel48JF55PiYop9Mg2bBei3U=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(396003)(376002)(346002)(366004)(39860400002)(451199015)(36756003)(6512007)(6486002)(6506007)(53546011)(26005)(478600001)(41300700001)(66476007)(4326008)(31696002)(86362001)(8676002)(66556008)(8936002)(110136005)(66946007)(5660300002)(316002)(2616005)(186003)(31686004)(83380400001)(38100700002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2dhMVc0WXFVWVpKRFluSGNIa2ppbmhDQ3B3bWhqMFJpUmFTR01la05nTWNu?=
 =?utf-8?B?N2N2WktuWlB4aFlqb25NNnA0M1V2aGtjaHVvcnJubjNqUG56bVgxTStocHk1?=
 =?utf-8?B?OVYwdFpHYkNzWHdVbUE3RDhBWThrUlIvTmd1UTRhUGd6SHhQT29YMjVlMDVH?=
 =?utf-8?B?U1FqWk8yc1NETUp2eDdZazRxUFYxdTJBRnZnbEp2MlFXTHV5ZWZhUHlwK1po?=
 =?utf-8?B?bFZrMEZYNTdNREVxU3MvOCtkUk92ODRNcHhxcEdiS25GOWRRY1hlVGxJaVo2?=
 =?utf-8?B?REpjNGF4b1YySU16cm54MDVPUTBxMEIyUU1EOUpiVDBFN2FJRm9uRDh0VEZL?=
 =?utf-8?B?aFNuN3dXaXNYWDZOKzhtUDhNcGpuU1BzbVBwUFFFRTIyY0NkWktPRXY2aU11?=
 =?utf-8?B?TFF4V3BrWmZkNUQ2bHJIRkppbHJHZEh2Y3p0enhST2ZtejBhMzgwbnpFT2FX?=
 =?utf-8?B?Z1dIOXMvMHV1QzVLZ1BYdUNORXN6ZGhXOUoxamhZeGNZTTVvNjh4TGpQdEtH?=
 =?utf-8?B?cVRoUnRVVm1XTjcxV21HYWVXNzhGSTlBdnF3OXJteE9Kb0NGTUJoQlh6bERi?=
 =?utf-8?B?Q3loeEMyODIwVDVyMllnbFUxT0hmTVJrWm9BN2xjQXRYTHRPV3E5WHBISkND?=
 =?utf-8?B?aGtNZDAyRHowWEY4dVBtQlpaUWlHbGxkUzYrQmVhdlg5WjdlWFN1SlRubENl?=
 =?utf-8?B?TzIrTWVHMlV3S3JkRE14eHowUEhpQ29FK2pTdUtGZnl1QjdOVTh6SXFvVEdm?=
 =?utf-8?B?WEkvMUU0ZEJGcWVzRGhnRjVDVzltUVZFc3lza203TmxoVVQyMkZvY24zTTNU?=
 =?utf-8?B?TDlkbWltUkdCeVFNT2xKWWpjSlJnZzcrR3pCYjQ2cGh3V21vV29vN1JvU1k0?=
 =?utf-8?B?V0Q5MUpxak9PcFBlbW5qcUJWU21JTEN5MVEvTmdSOUpnenRveTY5dzROVkFp?=
 =?utf-8?B?MGQzcGY0Ymg0VHdlcEZENUxoa05nSVNSOTdHOW5mRkIvS1ZWYnU3bFM4SzRa?=
 =?utf-8?B?QWY4UGR4aXRPdTgzdlJ0QktsOHFzaEQ1VWpwalBEb0ZXRG5XMDBqNVVzd1VY?=
 =?utf-8?B?SWkweWFtVGJQN3JNbU5lVkxhN1NyWU44ZVMvUWtGVkxVcjJCQjc2cHY4SEh6?=
 =?utf-8?B?UVJtMzZsc3VEeWREMTFTc2tKN09hWlVvbEdlYTkrcXdIdW9mTEx2RjVMaVRa?=
 =?utf-8?B?aFdxd3Yzc0JweklxYmdPcHpXTVg3RjliZEYxTUVJeTFuTitDNWs1SVpPVVJH?=
 =?utf-8?B?RkxHN0thVVdxNTZRaHp4ZCtpRndEZ21QakwzaDl4MEdOSVZVZFVuemp1dzI2?=
 =?utf-8?B?VXI1clJmLzlZYjIzTFVMQzd5bHg4NUtzTTZIV3M5RERKRVhjK0tEcWJTTzU4?=
 =?utf-8?B?WVd2eFM4ZjFHTGJtQlptL1JpdlRMVUlvZnhsSWNCSUZ0bEt3ZzVUcU5PdGFt?=
 =?utf-8?B?cnNycDdnRytzdDYyVDJDWUROczl6L0Y2RlQxNldBcTBQV1E0bUxPNEtWenhD?=
 =?utf-8?B?eC9QL1ZTVTFvT0ZsUHBKQzVhdnN5NkdMV2lNS0FNVEhOckp0b3N0OFBDL2FX?=
 =?utf-8?B?VXVFQ2RDZ2U1TmY1eHZyWC9peWhxUFdHd0FXWlVqWEFkWFRvQ2dETW0xSnlt?=
 =?utf-8?B?eW1YVllZWVhvS3UrT2tvWi9pZ3lXOUdmTVhyMlN1Z0Z3dy9zOEh6QUk3a211?=
 =?utf-8?B?UmxrenRCSnBZeUxNZzJubEFrdWE4djhaYnMxQlpiSDQ0S0lhbFpqVC9Lb1JD?=
 =?utf-8?B?Y1VPelZERWh6d1ZpamtOeVJKVjMvUlRkZUs1UCtOOGFKS2dtcFZETlFaQWdj?=
 =?utf-8?B?MG5OWEJ4YVdKdXFOU0FJRkZVT0RoWSthdXltbnJWazBPWVFRN1I2WG82OVJS?=
 =?utf-8?B?bEFTMFpRdFI4L2NHT3NIMUhQQTIwb3ZNbWJ2Kzk2N2pFZkNxMXJGRkZpNmFa?=
 =?utf-8?B?aU1uSEdHRUQ4bzNVbU5vN002NXhlUWgvR3FaV09sUzZoUkhvTVl0dFk2UFRU?=
 =?utf-8?B?RkdNZDVZVTRDQWdUeGNXakZuSGNDSkkrRHA1SnhvQkVBTlpmc2pGN0hXTlFX?=
 =?utf-8?B?RUsyUVRDbE40NDV4YjhPQit5Y05nM0l6MW4xN01kTkdzQ29sa0tGSXhVQmpM?=
 =?utf-8?B?aksxZ3BWNUJUbWpLRXd1R2trL3R4SkdTQzl4STg3TkxFeVFIVW9TTGhsL0I0?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?YnNMZTlLMTRrSFJTMWZWcXdzVW9tT3oreVcxUEhrd2pRZ2daMWg0ZDBiZk9R?=
 =?utf-8?B?Y2JiYy90cWliQ1QzbUlVeHgxanl0c09ROWdXbm1OSkV1eTNtMkNidy80dENQ?=
 =?utf-8?B?eTZvbi84SWJKZmNvYWgzSFA3UjRXeE8vNVVFSU9zU2JuWXRZckptSTZRNDQ4?=
 =?utf-8?B?dXJVL29mS280MEQ3LzdqNmdZZnJtbmNKanU5dXlERm5SNFBrcDRzN3ZWRnd1?=
 =?utf-8?B?OHJ2RnI3OGFSaW82M0grVDhKeFlWdllaNDVkYmdoS3pVQ1RmdnVTeGZFUisr?=
 =?utf-8?B?Q3pybldIVWNMUG9CVGVOOWFsZ3VhR2l4OHBQMTVGbVVkMzVaNVJkcW04aHdK?=
 =?utf-8?B?a1dhNXBZd0dqdFgveUVMM3RLc1YrR0VPdit1T1dUVGp5QzhJR0x4eUM5TDR6?=
 =?utf-8?B?Zjc4by8zSGFZcHRvUHVPbFZNaDRGVjBkemwvSFo0NEdCZlpwK2dodm5XUlNC?=
 =?utf-8?B?bnJjRXNtdW5JTXA1RSswdmtXeHVZWTBPUzRqckVjZG51N3hXbnN0aVJaOG0v?=
 =?utf-8?B?TVNKaUpmcytNU1hCTjJqSjZDNW96eTlsY24xS1dJUDQ2cXJsdFpJK1l4VjRs?=
 =?utf-8?B?R3FCWDlTaUJCSCtMYzBSSDN1V2tkQ1czTGxjRkVhWmZQb3VjRnlXYXIwVmNZ?=
 =?utf-8?B?TkNsdFJQUU1jV0c2VXd2ZExNbzZwWDJPY21ISXMyR0FWVFdzcW52VGNneW5p?=
 =?utf-8?B?SExHZSs5d1JUdUJteUIwN2ZNTHQwSElqdS80eXRsa1lEWm94YTdsdWo5OVo0?=
 =?utf-8?B?WnYwdzVVbmgydStXZlY4elBHTi9OSW1Vb081ZVZsQmwzbFBXZFp2MmQ1NGVp?=
 =?utf-8?B?eVJVT2xGS21LOXJwanIyVlFFekZvanRYbU1wMHNOT1c3UjJGMkQ2WEo2UEhh?=
 =?utf-8?B?eTYxcFBrWHJyNXZpUU41YTNWSSsvZHRMYStMVkFzM21pTmN0M2FNM3ZkOEFN?=
 =?utf-8?B?NGlRaXM1djFWWG1VdnRJN1VtKzhUQ0JsbUl3NG5Jb29NNFU3L2FwMkdhdVZD?=
 =?utf-8?B?bW82RFl5dEEvMWJtbW9hSUpacUV4WmlwRE9iYUQxYldEbVdPNWFJVjZxNkJS?=
 =?utf-8?B?alc4R2hYaDd2bFRBV0RKS0NaOFMvbjRSTkI5eGxkUk5yL3BOeFJCVVd5V1Vn?=
 =?utf-8?B?TldWbWpTQjlya1lRRy85akk5d000VGh3NncxeHFjRGEyRGhCMTc0WWJNTFU2?=
 =?utf-8?B?aGJ3RUVwdTA2VWJjUGNnS2owZDQ0VVBVQStsNVB3dG9YTzUyWjlMTlFVaTdp?=
 =?utf-8?B?ZnpyMWNqUFFIampiT1d0VTF2VnlGOCtqTVNnQmlMa3JNY0U5V1NkSUpSK3hq?=
 =?utf-8?B?NnByYnRNZEpDMUpPZ0JDTUdaOFJPalRBdW4rUHovYmJXZThXbXo3aVpjejBE?=
 =?utf-8?B?UUwyVUVGaURIeHc9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 911408c5-64bb-4f08-bc80-08dacd77318f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 17:21:44.4058
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8GEeE6jjPVh4GMTZzllELB9OJWbQdWJN7XYSwy2dUD0T8l7PSMDoxg9R6HL9EBUDutTDtn/C8VuMa7poI0VIptd0fSk+3pPKbcr9wERXnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6195
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-23_10,2022-11-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 phishscore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211230128
X-Proofpoint-GUID: AwM4Aa-K3NFyPwh0RWBr84bw3pi37BF8
X-Proofpoint-ORIG-GUID: AwM4Aa-K3NFyPwh0RWBr84bw3pi37BF8
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=MKiz8qGu;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=g4YcjoC3;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/22/22 10:41 PM, Wenchao Hao wrote:
> Sorry I did not highlight the key points. The root reason we need to record
> node_startup mode in kernel is userspace's node_startup mode is unreliable in
> some scenarios:
> 
> 1. iscsi node and session is created in initrd, the configure files of these
>    nodes would be lost after we switch to rootfs
> 2. someone do iscsiadm -m discovery but did not specify the operation mode,
>    the iscsi node's node_startup would be updated to which specified in iscsid.conf
> 3. someone do iscsiadm -m node -o update to update nodes' configure
> 
> What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOOT
> session when logout is specificed by "--logoutall". We still can logout an
> ONBOOT session with "iscsiadm -m node -u comamnd".

logout_by_startup does go by the startup setting, but I think you missed the
session_in_use related code. It checks the mounts and holders already. Just
change it for whatever you need. I think your lvm use case should be covered
by the holder check. If not, add it.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/717da158-5a7e-b478-61d3-3753b0b00e01%40oracle.com.
