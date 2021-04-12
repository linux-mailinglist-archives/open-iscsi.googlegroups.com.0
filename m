Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBREC2KBQMGQEPMWM6TI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8815335CF52
	for <lists+open-iscsi@lfdr.de>; Mon, 12 Apr 2021 19:20:05 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id a14sf994184vsd.9
        for <lists+open-iscsi@lfdr.de>; Mon, 12 Apr 2021 10:20:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1618248004; cv=pass;
        d=google.com; s=arc-20160816;
        b=UC/j9qqlFxaSHolTF76mZEEBf9w+TMqZGcTxOipOKKQISbh5GQxsgh4ajhug8yZ4DS
         irhhk0+Dd7+4wo7o18euQpWipPYE0As1+LR96bNRn+xPHKvOg/uCzagCXG3kK245xQQA
         BbQ5ouGxCeVBtat1ET6iQCh40rIM2PY5jXFkPtQo6VXCO8/3dPbZiijJxXRBPwAx9EQc
         XN/jopG9DsoJim0ixtEZ/MQV9y0D7KTr7Upux57wYkRLMGnRQJjjWbx4wOIJBT/1UKhp
         l4kfWCorBOvDhCxbdGyWeffnsNXRiwCSXxRKmPp+LUbPCiNdKzFNCOT+lg4fnkLZ4GVs
         rkTg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=CdOou3bSH1uU5weQI/2JT0VwORtvKhCm9JMmyz7R9Og=;
        b=ypWkxQYVfF8DVIQFnP2Rn8hPUJo/qdv0up8njhWR1R0GaOdDqkCSj2/WCl7LtHB2aC
         2QbT2hwzhrZqUreG/LOlv2nzdiiyGt10MfqV9PvRMftaB1EBBQkH+vgh7Ra4tqJAJ/Do
         xarsLGWTXyunxkxZhPq+iM1DBgeG04s9kOMbMF5zcpeVWKjaq1OEO6IcvDUjs4lyVwHS
         B5DvajHcqDV3N6rf7gM2bfZFuNqJ43C4JdX0ytRIIJROMnNMHBy5MQAk/SncvsKcBK5Z
         nqkgSfzmjX7bCC9e13H9JMVdlFZCIXcnliJPJ5h2FGae6ifL++k2fhtj0qj5qrsW6VB6
         E+LA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gut4ZB98;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="h/KlsneR";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CdOou3bSH1uU5weQI/2JT0VwORtvKhCm9JMmyz7R9Og=;
        b=mUOJ5qC1PtG4IyEA9Kuf9SlGwAvKe8X12vmAxga7AWBqhTR0NrUqCB/63WRDGKkrtc
         0j6WUioSaXO5//PSMH1aLO1cSmEpqJrC9sNl2CdyoR67ODAr/UZGwZhQd+EaUcokpgnn
         lqJJyr5NUagJKZ1YI2UDSn0CP3HWBpHCmKElgk8iotnD+SPIPBTWcwuYPqXpCRoNDFGR
         2zDlQQUTAyROhHxHsVZllQM2ygK+0LbfPnt9Vq/wLqPqMDwQbgwMlrlaF7ZvKrma8RDf
         3y606uBypaX3diA+Atk6piZcVUZ6uMLeSt0YEGWMUncBdx1q7pxKXiUviQPou0ZzxWmO
         oukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CdOou3bSH1uU5weQI/2JT0VwORtvKhCm9JMmyz7R9Og=;
        b=judWRmVkY11oMIRpdKD7AALDgDjpIPt3l80j9oIBdYzff4WqoilEqnBqzCIf1Gjsep
         nsVyugwBUJflcMCsu6mAC3UuvJzoow9DSMoKubS/IM1bixNz0tieaOSTCdN5FhxTsvil
         1TEsJnEMM3HBqJKFv1nLxL2B8Xm8uOUKX+W0cwG3R+WKFvufJYQytpBYb+2WFw+5quU6
         t2YDYqtOtcwSN12Uek+Nr5XkLpuTfow0OllO5HYMQTCePDelfwY9Djzt0oNepPpPlViE
         IS+uBVFsl1SQD+k9AV35qfw1p5lihqgZDNh9a1YUw4XWap6tIGjb9ipAETcv0PrUh11t
         tDoA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531TfPWKk8lQiAL/dq4gQpIJGAwSjNj7TKNGFP/+oOXGTxlcUTSE
	dVmwD/NYwmhU+JVk3tkSvqg=
X-Google-Smtp-Source: ABdhPJxkhCQQwIt54eQuRZ8IdeasOFBJob0r/d0pjeyXIa3j/zaSzCibi81aJ997DVLxEYT98cEsWQ==
X-Received: by 2002:a67:fc4f:: with SMTP id p15mr11779378vsq.4.1618248004555;
        Mon, 12 Apr 2021 10:20:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:6146:: with SMTP id w6ls1610362uan.10.gmail; Mon, 12 Apr
 2021 10:20:04 -0700 (PDT)
X-Received: by 2002:ab0:6710:: with SMTP id q16mr4271140uam.73.1618248004036;
        Mon, 12 Apr 2021 10:20:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618248004; cv=pass;
        d=google.com; s=arc-20160816;
        b=GoQspwR+lB24T2/V4NCnDEZwy9OT5Y9j6a3S5QGCLKlcVTzh8Qae0P7OZGkx8dRnSY
         S1k3NOkOLIMavdoaHQAOo4fiI+b6tZPyF5k/dRG4CU+C1fLJIEJAh0tPJ8Yh5raOtv5f
         xeY7JVEhixN6C2Hu17J7kC7+uksJoK4CwMGTtiD1xD1dwi0meNkusmaBKrsMUI8QErjm
         kIpm58QVp1deTozer/LX+mM5D7DJTf7Pb/Hj0IXTzySJd5OZmxRj0qHuGfWUZ/fYFLLz
         S0sWSaJAMq3tZN2UcCXZVdLKJfy07et1DJRZfHetBq4LUjBKREpcqvEf76Y52DrUUPuU
         oCYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=xnuc9bWFW1Gdqt6VSZSJW68VZth7xXAS7S7ejeXN1QY=;
        b=RHKcqGVjgymgY4/eYubFNoEE2TXra28DYjKYbI4GFcXxcBti3N0li01+fY71KFCCLB
         tuCHHrYKHZwImiEjusuEcZ9SGDUogRcosorDPgj5QhoX3CRjhvMrdQIdVW7xcN8+1Z2m
         ndt/jEC96XMZkrCla5GRtk3ag+j56m1uoigcbVcNzmK6BelS8xmlik2vGt7YaApzj3pr
         /AGKndTLEcD76cxuu/c9i0iFDYwgzZOF040ReFXk+CfpjSkUO/gZDa+iyWLChw05SNkF
         DGQU/RNJwogB8DGfj6V7MCF8XJyegMj8ERwnSav3sN4fMCbAs4gaazEjA8h4B6HZreqW
         YPsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gut4ZB98;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="h/KlsneR";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id k26si188821vsq.0.2021.04.12.10.20.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 10:20:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13CH56um088146;
	Mon, 12 Apr 2021 17:20:03 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 37u4nncf6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 12 Apr 2021 17:20:03 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13CH6JIA102701;
	Mon, 12 Apr 2021 17:20:02 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by userp3030.oracle.com with ESMTP id 37unxvp8ru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 12 Apr 2021 17:20:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kduTdb8j+hoUqWacAv3AIxFVHWk4VYRi1vjjRKCgN1La7DG93yqHCKHrQwdN5a5J9k5S/1ENSZaIwD/A+1zml/gHNUZr8WP3NJaEZCiX5iBDTm49AiEkzXSPZVy5ciA7zSTASlrcpuo54fP8qUHCB1TvLP92gWPUG8kyQPa+KOrvtb8sOOZ2sOBB/fCQfsyGqMGq/n8CGAqsCWAF5WcUaOP9Lc+yqW/zplW0iWt3xc/UsRigul0lBTp50l9xlV9TVG2Xl+imqZctncsLB6mLp79TVHgIk7JnX8T5khFoEftLHhr4Yk0YuRKcCrQH4QuhbezJAhVzHi4HLdxrMGnb8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnuc9bWFW1Gdqt6VSZSJW68VZth7xXAS7S7ejeXN1QY=;
 b=InYiN8hVbeP+fGp3PDeGsHSJkEeyYM6uiIzKt8+C5ZX+EoVZB0Q2Uy73Zff7n4n+d//RotbCGJYDB8PLVGSAFleNO3+llxazY1l9q5AQaCSkPOVwQYdA/07qxPHJJCdWu1/yPONKUlTQJa4tKKKOB1/38/obP7J+s0MULXtrwHcBz0Lw200mYd2q21chhMRzZrPxtotxUxhbk62wrquBXhl6j7/gNb4kHbQcid/qV2Ytd/xefW2GhO2n2b0DrZOr7JUAqLXBc4BzARsBLM0kvRYrEUBGrP21fdPKocqiPeLMobUSwIvLJPiDrh6jHJalMN9cKE5FPjIAPpz5/uSrZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3573.namprd10.prod.outlook.com (2603:10b6:a03:11e::32)
 by SJ0PR10MB4638.namprd10.prod.outlook.com (2603:10b6:a03:2d8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Mon, 12 Apr
 2021 17:20:00 +0000
Received: from BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::50bb:7b66:35ee:4a4]) by BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::50bb:7b66:35ee:4a4%7]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 17:20:00 +0000
Subject: Re: [PATCH 2/2] scsi: iscsi_tcp: Fix use-after-free in
 iscsi_sw_tcp_host_get_param()
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wu Bo <wubo40@huawei.com>,
        linfeilong@huawei.com
References: <20210407012450.97754-1-haowenchao@huawei.com>
 <20210407012450.97754-3-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <719f91cb-769d-53c8-1b54-cb9ad38aba01@oracle.com>
Date: Mon, 12 Apr 2021 12:19:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
In-Reply-To: <20210407012450.97754-3-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [73.88.28.6]
X-ClientProxiedBy: DM6PR13CA0072.namprd13.prod.outlook.com
 (2603:10b6:5:134::49) To BYAPR10MB3573.namprd10.prod.outlook.com
 (2603:10b6:a03:11e::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [20.15.0.204] (73.88.28.6) by DM6PR13CA0072.namprd13.prod.outlook.com (2603:10b6:5:134::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.6 via Frontend Transport; Mon, 12 Apr 2021 17:19:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3da4006-8140-4656-c172-08d8fdd73378
X-MS-TrafficTypeDiagnostic: SJ0PR10MB4638:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SJ0PR10MB4638957AAB3FB49EEF065740F1709@SJ0PR10MB4638.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EZn5MqDQi7OpKwVsTm5J2koEWWz8w/xd8SBUiZI86++J85GueYErBcmlAcC9xsbTFTvikfTsAJIVnjspp5lk5U73iO5P+/evxTDO97s5UHIQAzGe1I2ATJxz5H5Kcd3hzR2+zYkUSy5naQds+WbpWOuc1D1YMitxq4uHhUZUp7Ipzkrn8A5KUT6qvljB1xqM1GpVtHSzayD6I2Kcupy2R+cSEG+70QOELNFq8ItXdY8xIxuvwrspQUFWaUXcoabicvGcgu8OeB1dt22DM3rmesNSaeQ8WKq0vEtYzGbc0xofs7wpkftQyMq2TkjG0qyFLHVzOtyLT1WFjSDlvbg71df6x+sCMM4F05GDc4HSHJLW52COCh7dkTOAPBzSbVNin5ZCw09gn45xIsP37A5rWmvzwLGtpTZnqU+rDw+jiAi2MXOeeu5KtMhbBxyBEdA+8qMekICSs6v4SdbzUQDWSSGRxs1WaIh30UmQyPuDqIGeWDLdgBZerKQm4xrIebBM+AEMwoXWRnL749vI098C/2yxWRCA9J82zufSoZ3WnU3FJ3WAcGbWx3PIF4xLvKCDuNDHOoyf5k3Quib0jJ7vVven6YudgwUGWXNm4+Fg3a0m4Vi0hP6B1rIbxThEiBdB/W1q5c/7NS7Y3VapkgmVMDnw2mV2rEj6F63yBMJdTnqlq/V2ThKiVi2iuMU1vtzjbSAa1ozeiHg1adZ3vZFwPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3573.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(39860400002)(136003)(366004)(396003)(346002)(16576012)(5660300002)(53546011)(316002)(31686004)(2906002)(86362001)(4326008)(83380400001)(66556008)(110136005)(6636002)(6706004)(2616005)(16526019)(38100700002)(8936002)(956004)(66476007)(6486002)(31696002)(8676002)(26005)(478600001)(66946007)(36756003)(186003)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?eFpyL0Vlbi9OUm9FTmlzK3dSN3FueVZuR29ZUTdPdnlWd2kwMWtyZG1vcE1M?=
 =?utf-8?B?c3E0TXpsWlJORUpLR0x2WE5Rb0ZnUUJmQ3RDTXBzMVpJSGFDc1A3MS9NSjd3?=
 =?utf-8?B?QURtU3lqc1hUVGIrSFJ3VVBBL0hscUtZRHRCdlMvRUxBUlVNQ0RyemxqZGc5?=
 =?utf-8?B?MGZBRll5ZXV3RThOTWRNUkoyT00yMUlaMStzdXRzOWs4bkRRN1lVNTFkMGZD?=
 =?utf-8?B?S3lwK1c3emJGQkJmUitGdGsrdnVKMmg3d2NEd1Fzb0ZXK1VBOGhKZ3V1NWI1?=
 =?utf-8?B?VWxka1RzV1ZiRURtVnpjdXZoTUxOaWFFeFEvNExIWG1DYURjaDdmQVhvNit0?=
 =?utf-8?B?N2M4eTlFdjNUK2Y2bm9HaElzVlFzUU5kdFJUQkI3dUw4eU0xYkprY2FYQ0wr?=
 =?utf-8?B?M3B6L3k4ZTRRd2VnK2VsWlVpa1FxdUMyR2NvSnd6RlNCRjBUekRwb1dTMWlN?=
 =?utf-8?B?NE94cXhkSVdmVjRNRjh5ZEswUi8xbFBXZjdBaUFIQnlHNnFtcEliL0xBSjlN?=
 =?utf-8?B?UzY3b2tCVnptMTVmWmZITHc4NDdudDFQWWg0MVFXU3Nia3hmZ1E2Wm9ETm0r?=
 =?utf-8?B?NHovM3ZIeVZ1L1kwcTl3RGtRUDhDT2xHL3pjNXZNcjV5dStwcVVWaWZnNkpH?=
 =?utf-8?B?amxkN3g2OUlUQUxKdnJtZCtIZE9jZnVSZnFsckdNTVV2Y2hmaDdxSTUySWc0?=
 =?utf-8?B?NFNNOVQva2ZRK3NzVmZPNFpCYlJDQ1hldGk4WFVFTHlkcWxPTmNnZG93cTB0?=
 =?utf-8?B?Z1ppUDdjVkJMQnU3bUJTN2pEOGtGZDB4eXVxTGRNZ2pSZ3NqSDNoWW1EMDA2?=
 =?utf-8?B?UXlDL0ZZQXZ1dHJ2cDlqWFF4Nmp6dUNzNndIOCsydHhXSld3QUhrSGwyeG1E?=
 =?utf-8?B?VUkvcFpZTFo2OFM3cGYzWlBtVTk0YnI0YUgrUXdGNzRSQTRrQi9LejZWSjJG?=
 =?utf-8?B?RnM2MmY2TVhpeE1TMSsxZU42UzZtWkdNTkxwZUlVQURYUE9xY2U2cWwxMnRW?=
 =?utf-8?B?aXJKSkp3eTc5dG44dlRRUkNkRnhDckNiM1ZqaStpcGdlS0kzcXcrVDlIYkhE?=
 =?utf-8?B?dXVVKzZweUZjRGRKZFdHRWw5UkhOdVhxRVB3dTc4M2tOcnNYM2dQSnJVUHRZ?=
 =?utf-8?B?RWxIWHBmNHF0Zis2Tm5rSEZ4ZUptK1VYSUlaUHhac1VzM2RoTFQ0RGY0eFJi?=
 =?utf-8?B?VDhNUWdKTFkvNy94emw1Qm8wQ2J0S1lCL244NDkwNzRPZ3RiWmJXYk5mNGRU?=
 =?utf-8?B?dDQ5RU9lVFh3QjAwSGVTNUxHK0ZEMlFSM2xSeFRBTHBrVjgzSkNMRWtuR3hr?=
 =?utf-8?B?cUxqd3pkYXdLbWh4cnQ4NFBRODZGU1FwbVBvdkJCZFlJY3lSaHhXclNZa3ov?=
 =?utf-8?B?MUw1MklSNzhITmg0TEt5eDVqa0FPN0hNd3lCdzA3TlhURjU5QzBhNFZFUzRG?=
 =?utf-8?B?V2cyenQwckxSbzRxWHRHd0xGNW1yaHpLQnNYRC9CaDF3M2Nha3VQUUNzYkZH?=
 =?utf-8?B?VE1TTk9iWlM4VkI3UWswZitjbXM1bzZpV3JxK2JZVGlPK1M5YjIxQytsMENm?=
 =?utf-8?B?TTJsM0Z4dHVrUkxxZlFGUUx1bkczUXozYVR0bFAyUTlBRmV3TjlpcmxvUzJO?=
 =?utf-8?B?OWxNWGhQZVF6MVkzQ2pkMEJVUGhDbHcrK2hZNzhwOEVoWXVtaVY5cDd1Kzkw?=
 =?utf-8?B?dmY5NDhZQ3ZaRnhxYXUxNzJGdE0yQ1VyblIrUkVlVWQvYXR6emRDNzFqbGFi?=
 =?utf-8?Q?ipbHnZJLG3cDMhRb1Qazwi21Zki8Tz7Z04K2L3F?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3da4006-8140-4656-c172-08d8fdd73378
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3573.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2021 17:19:59.9491
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tH3FNU18+6xmql891xbZ8Y/XpnKfSbU3vxQek8ibTi7xP3/pRFqtDugA1vDgMqTY/NhAjYXevx9TqB4Z1i5+ANWfW2COTXDTbks0U59I9xY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4638
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9952 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104120109
X-Proofpoint-ORIG-GUID: MTX2-8jfj4oQGBm1I1cutLJbUPMAOJ0r
X-Proofpoint-GUID: MTX2-8jfj4oQGBm1I1cutLJbUPMAOJ0r
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9952 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104120109
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=gut4ZB98;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="h/KlsneR";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
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

On 4/6/21 8:24 PM, Wenchao Hao wrote:
> iscsi_sw_tcp_host_get_param() would access struct iscsi_session, while
> struct iscsi_session might be freed by session destroy flow in
> iscsi_free_session(). This commit fix this condition by freeing session
> after host has already been removed.
> 
> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> ---
>  drivers/scsi/iscsi_tcp.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index dd33ce0e3737..d559abd3694c 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -839,6 +839,18 @@ iscsi_sw_tcp_conn_get_stats(struct iscsi_cls_conn *cls_conn,
>  	iscsi_tcp_conn_get_stats(cls_conn, stats);
>  }
>  
> +static void
> +iscsi_sw_tcp_session_teardown(struct iscsi_cls_session *cls_session)
> +{
> +	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
> +
> +	iscsi_session_destroy(cls_session);
> +	iscsi_host_remove(shost);
> +
> +	iscsi_free_session(cls_session);
> +	iscsi_host_free(shost);
> +}

Can you add a comment about the iscsi_tcp dependency with the host
and session or maybe convert ib_iser too?

ib_iser does the same session per host scheme and so if you were
just scanning the code and going to make a API change, it's not
really clear why the drivers do it differently.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/719f91cb-769d-53c8-1b54-cb9ad38aba01%40oracle.com.
