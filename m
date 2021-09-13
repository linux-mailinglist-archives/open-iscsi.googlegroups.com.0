Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB56Z7WEQMGQELIDCNGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDC740972C
	for <lists+open-iscsi@lfdr.de>; Mon, 13 Sep 2021 17:23:37 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id l13-20020a67b74d000000b002c95daf232esf2163216vsh.13
        for <lists+open-iscsi@lfdr.de>; Mon, 13 Sep 2021 08:23:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631546616; cv=pass;
        d=google.com; s=arc-20160816;
        b=M4o2ISroIFwFAuZ++fKDnbbQrtEScsgaAXa21qp/TddxJrLgXc1oIn3GsWg+c/qPzN
         khAkgPzJvFWAqnb3aazyqxuaPFgUAUym715SZR8titF8QYS8N9w4VeBbl4uGT2W+0EE1
         lDjcQht2Jwvi7mRBHqkqpXAXezZ6ijNpwebd/LZbMEhWplqIx/7e1pzInknwWmxAeveo
         0iKhFUMfD6ZwZS0TdQmh8xkQsnfPGBk+DQJb+3jkF4w3xM/6izKqAhDaOK16DGLrSGOa
         JcPb9s9Vuey/eAmyp602sjXZb8jfDd7zpvtfIBstolKgeOCHmlLOfkBBAD8s00QKyQKK
         mR8A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:in-reply-to:user-agent:date:message-id:from
         :references:to:subject:sender:dkim-signature;
        bh=dYYmbIECRvrr51/D0IBMwrcrNoyMXI5GOEyAZKU6zxQ=;
        b=XZWe5sj5IYhYMk7ADWI1NSsAN0TXRuurbG075ZKXQH8S0ZbpdEKbySo2nVjmlI7Cow
         PyCA2mDECK5WOuDNq7tuPnswE2cZMyP+xAoVNU6xrv43eDfWVzY0Pc41iJlsyGQ8uzuR
         wHAf3IfjV9DnAYewkadsASR0DE2SSaILodb6bPOkvJ+daIC9LhGe7yrlWWHKCRb4reKf
         Y5WxkeQxyJILp3jIndhvqTKbMsH00KF5lOtTvH0vDIp884aZeXF3jWtErXvti/whxXcJ
         zWy4Z5Hi4fn2H9cDynP84ojfkIansbuqTKQir2EtTrQrmwKWKp52YzcD/LPV5jbYKQbn
         HFbQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Zz3yutat;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=sfkjgTQt;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=eJpt2JMX;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dYYmbIECRvrr51/D0IBMwrcrNoyMXI5GOEyAZKU6zxQ=;
        b=lHc3QxL22YniKxf1etW8ZGZ61lqeDFkyYyQMQ/QVGSQG9pp3LabKILNSaD66eLeFq6
         iAi/ZnieElHumTw2EnOsToljU+BqtntsMCSZSS6Q+vUP893XkRt7rDmhSBrHzOBYmnKa
         ntZnsh32WoRNQZ3dHLdkFNREzjaiNmMldcCnR/mP6GSCfQHnruWh/9BL3RGFn+U8DUiQ
         JpfHjnP6fbiFAboRN/V5Nq4Q7faToea1tHOXWZy7sSADOXiUm1uYkBCBmMYcUDaHS502
         DHRxcBoS8ROil93Qvh/q1z2yCb65iCzpdonoI1pI0ZIJaCOaVVhfyo5uwfKwqfXaDMI3
         VdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dYYmbIECRvrr51/D0IBMwrcrNoyMXI5GOEyAZKU6zxQ=;
        b=kOdvmf7je15CT+9eM40rD0cEdp23fRfQfEyEUwzQaV3gC8JNYCtpxyj8RJJfClvroc
         SsxLagRzWnJeKH5n0k9uAWMyGr0b6MgyzQl9INc9mPf5b3BCrHKqwYLLfvSdLe9oXL/j
         EvJp2iejgfEomPMV4hOxc4chfkw+m+GTTCGgthcbQ+ex5F4qoKN4b1cHttH+0eVGd/xF
         7L9ZRuC4lU4GcL/RbSiJ7dedSehroUi06b/2jqg8MnEI3HeV51u/nz31tlHFZRbEKPhi
         iuca0RE8dOPhkq5okYZ8eIlWHle7NcgkLAgrOX+ErSF/boBy53zTov76cJt9G+qbwrCn
         ZlYw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532hB+tbbj7ITlOhJtu5+g85ABwJ6Vu3kLgnaals9TzH/fniwX4t
	RBN12JqACIHVrAmhHW6vQsI=
X-Google-Smtp-Source: ABdhPJzM9fBN+tkHfGsGfm7Htw4p9sPDFb/nAGwSVVAKIDfpLRjgbYLvqqhOcnv87T2N6hJ60dXB/w==
X-Received: by 2002:a05:6102:66e:: with SMTP id z14mr5535003vsf.19.1631546615990;
        Mon, 13 Sep 2021 08:23:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:1343:: with SMTP id j3ls962722vsl.1.gmail; Mon, 13
 Sep 2021 08:23:35 -0700 (PDT)
X-Received: by 2002:a67:b005:: with SMTP id z5mr5231990vse.13.1631546615347;
        Mon, 13 Sep 2021 08:23:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631546615; cv=pass;
        d=google.com; s=arc-20160816;
        b=pvLXz1+MxSm2VSWkRwfCw+mbqlHmOFAPlGHUKmotSt6hBz/Ju5ARRGF1JBSgT5N6dz
         71sLvQE1m4NQDeoaMQl8ZSEkRAljyPX8BOXYUTqPCGaCW8kU38/f8dzSUdFbRCESr11f
         oYibElvR2nqQ4dZQ0ZV8a86aXiu55tzVcAu+ouGIXw5BCTCJCVZR1X6TfR58hHFSOQov
         szOBDOGnQzocwF0rxl68jdM/GL1c/Ddwv1Qhoy+ZvwLxz229zX9htZAlPEKzVJ5gil4K
         DlZdxfIqMcXvYJ1sT+AsBhlAI0pfdSFDpcZzqKqGu0oc6rdDFEe1ZmTR4gytH8lF3Ttb
         ZNgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-signature:dkim-signature;
        bh=VTdvDUr760htrBUmVJZ5QnWh9QhjP6Hg1OhLAYaxzIc=;
        b=fxbhecCxjWMfspTxVkOpfJe10rKcHN7HlykpAcBNEwYoD2pjN997/4yStZwl0h72oI
         9NRFa5+jF0RLEIxWNfAq7ES9PBU6UxhHSn1fKKwWU0ulWvi+Tcqhj2XC69XeYDAyyMsa
         MZEvKTB8tPJ5rvS/DAmpK1Ml1KLA6ANjVW6h/UoaCyL1zGU3zjgglr+TnvC85NxjXTQU
         nogOfZO7ZjOPMoiwSIMEeL5IOTkTH53vFi/xBJRiF3Ckd+gjKIbPTKvbj5MLqGK0Prre
         ++YUMUgdP5of2LQgXdrrSSCchKx0G5/J1TIeVBEOwSUImCFniLTfquirs9NJ+He7O05H
         dR7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Zz3yutat;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=sfkjgTQt;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=eJpt2JMX;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id 132si608075vks.4.2021.09.13.08.23.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 08:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18DESqbn024407;
	Mon, 13 Sep 2021 15:23:35 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3b1h45k62e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 13 Sep 2021 15:23:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18DFF5PN004952;
	Mon, 13 Sep 2021 15:23:33 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by userp3030.oracle.com with ESMTP id 3b0hjtnd1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 13 Sep 2021 15:23:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6ABGKnsUq606Oicyord5TGepfUdQKhEs73vL7DIB5gDOZjHYF/UpUSH4nDhx+I546hH2xiajz4j2U0vzXa1zLyF+QOeKXMd93s+/m5VPyM40QCyHCZhcrV3Xdsv3ORN/k8Log/AXkSQz9H+eB/+ONkxZ6iserMs+DZqual1SN54I8qqQ4LUJkAREPYOoGWCFJk05M5POvlFmX2LX3VhrNRoRXyJn2oYO0vt9g/8A4Py0eWJgp3LkP7hfdeTJhbls59Dy3vrN4F0pzii8QetOM+4VtrHL/GZ9et1fs4Rd4czjywWkIggHZ3hV94/NK8e5vmrv3+PIWV0FJkuIRFc7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=VTdvDUr760htrBUmVJZ5QnWh9QhjP6Hg1OhLAYaxzIc=;
 b=JeW9Z7+hLvxsHPBAU3+quYnABcprayMI8aVJg/KP9cjNb8Dl/oV9EziWHlxJM7Jgt9JUmel8vJv2FvH2KJiyKgIFdsVV9ovDHhV7a2kw94Si3RzQQX+uwuIbUs8BMxfoDFSV8UW86ziybQkcWLzZM8zn999KI2IYNs87Nuj45WXzpE/7y/VQaaNteS3v+K4P4dpNNZwEeXfXTxOgf9LjmuXb5YGd21J5gJqP6S8fKInrWdY58ZJ4sCHX7QzODc/itdBPNpN4kjGR5Y71u1s+LGeCSL52zXPznBFRGX54gfBUINZ1q03vhdQJSdFpg0PetosGKA3+tz/yfRl+yXn+AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3573.namprd10.prod.outlook.com (2603:10b6:a03:11e::32)
 by BYAPR10MB2423.namprd10.prod.outlook.com (2603:10b6:a02:af::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.25; Mon, 13 Sep
 2021 15:23:30 +0000
Received: from BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::5881:380c:7098:5701]) by BYAPR10MB3573.namprd10.prod.outlook.com
 ([fe80::5881:380c:7098:5701%6]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 15:23:30 +0000
Subject: Re: [PATCH v2] scsi: libiscsi: move init ehwait to
 iscsi_session_setup()
To: Ding Hui <dinghui@sangfor.com.cn>, lduncan@suse.com, cleech@redhat.com,
        jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210911135159.20543-1-dinghui@sangfor.com.cn>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <3c40a1af-5f13-0e93-67ad-f1ccd4f1480c@oracle.com>
Date: Mon, 13 Sep 2021 10:23:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210911135159.20543-1-dinghui@sangfor.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: DM6PR03CA0038.namprd03.prod.outlook.com
 (2603:10b6:5:100::15) To BYAPR10MB3573.namprd10.prod.outlook.com
 (2603:10b6:a03:11e::32)
MIME-Version: 1.0
Received: from [20.15.0.204] (73.88.28.6) by DM6PR03CA0038.namprd03.prod.outlook.com (2603:10b6:5:100::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 15:23:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c383514-ea79-428f-f6fa-08d976ca7138
X-MS-TrafficTypeDiagnostic: BYAPR10MB2423:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR10MB2423D579A48C614D5A286B16F1D99@BYAPR10MB2423.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:241;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: grFLuwUuK4ENo67f2ebj2GE/0WVQDTuSZ0JY4soswuWeKJYQBFv21MWUsqAyIUi1rtes4LJAknbvsUt6Jau9/HfsEK9ZwZnfGfY12oZt2LlPiuScyxEJoEMCb79mqWx67V4POrOxS0sCeMzHB8NE7rdv1rnJPa5s/dxFKq0+x1KufocSQjRM4pLBUdCLw5dNvfzJl3c+vDQBYTBXZI7hvu6hm+oOyjhfdc7R+q9/aLUpPjhEP7PAyYE9vfMgN4AYViuUijCbgQdHj7XA9yegosV+VShuP0DOvFau+WK+hrMmSMe9YlcWreCFpOuMi8SXJxYQlywAnpQHUCaYuINvleV3RJ7cWqb5dPc3hVWoCX7k28dKLVLQl9jy7mqTbNUDIBzbUX3b7dXbduZexflx0OLFVe6qeY9QqXquCuXK8FUS1fQuzHlPMMl8gUohBdfIlSk4JS8mC6X+tcF0ndry8TMHuqoNkV5lE9WUTcpzJx/qtPwmgZjtgJwX4Gg9G8WsbypZ7N9xefG7LmxJGssPJluXagdIpc4pvpw14QHAwn/3OxH0+45pH9RxAWv1iS2BT0ykPKrff2hUXXykItPRJ9smJRBZVV3Y9BrOeKnoQ8K0H86xSbLh8yfHeEwDe7yIlbCtxjg0c/6Ynx1KxrAoY8bzJW0jTEV/iiF1bFk18fKKjJ1B8DbBKZOumVQG4PaHEbPxrCoTUZ1i9gachoP6QLQf5+GwO3cF3hMNOix2MRA3BDI8d5L1AcCqbVeJit95
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3573.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(376002)(366004)(136003)(346002)(39860400002)(956004)(2616005)(2906002)(53546011)(66946007)(66476007)(66556008)(186003)(38100700002)(86362001)(83380400001)(8676002)(16576012)(478600001)(316002)(6486002)(5660300002)(36756003)(31686004)(31696002)(8936002)(6706004)(26005)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1F4SFpPZ2V3cEMvWjFXSmdkdkdOdWtqbUsrMElTQVcwdFFkN3RFTFJFQlVi?=
 =?utf-8?B?MC9BS3NWdjMrS3VsNk4wWUR0UG1ZbjVrWHFWdS9tSVhqTDYvQnViUVBvRjFR?=
 =?utf-8?B?SEF0QzRBQkdOYlMzZmZmMHhCWTZzeWk1aEMxOC81YUhDRHpGeVRpT2FtYzJ1?=
 =?utf-8?B?K0U1Ylh5cXN3Q1VXelV6NmlCODl2RzJpMFIrbXhFbUhtZnJUMWx5WU9wMklP?=
 =?utf-8?B?Mk1mTWhDQW0xZFUwbE9iVnFQMFk1UmRicFlKTXVJN2ZKUG1lT01WU0FxQ0N5?=
 =?utf-8?B?dXZqNndzT3h5eDB4TTlPVVZTSnAvUzVvV3hRVkpOZFVIZTk1NnpPUkthWG4w?=
 =?utf-8?B?K3dvNmJIRDBWTkl2M2VEcG9HMWVKSDU4WFdDZUNxbnNzV0tkV0FNL0ZXeDZG?=
 =?utf-8?B?VnU1clZrRUFFemlUNWhLRW1HaTArVjl5M3lIdXJTTEk1WVBuaGRvLzNKbmph?=
 =?utf-8?B?UnZzNTAzWXlvdzdmN2l1OGZJcFYrSUY0YzZwOVBsS2ZIZ0NFU2Eza3I1eTUz?=
 =?utf-8?B?N1Yyem1FZEF3MkNyeC9XYVhzVjdDQ0RpL3NiMlFhWnNGTDF4bGU2aEpiK0Rw?=
 =?utf-8?B?eGZZMlI4Q0l5YkplUzRrbHhla0Y5NG5YYzdrMlI3VnpUUUxLMXlKZmgrR0lT?=
 =?utf-8?B?YU9PdUpxVDNqRXZXOTVSVm9QdTNCeG0xK09XNjRYU0JoNG9MSGN0d2F0bjVE?=
 =?utf-8?B?V1h6VE45RkNPU0JId3RBMzRqcE1EUzJsc3BCSElpelJXbzNFQmEvSDdYSGpq?=
 =?utf-8?B?V3UrYTdpVDFNRWdrSDAwY0I0SlI3dzIwWUhNTU92bm0xL2ZhM0dvaCtIMjZF?=
 =?utf-8?B?dExxREJKMUhBYmkrMnhZYi9CRlJYckNKWDdqclZFN1huQ1lNb2hObmltMC9L?=
 =?utf-8?B?UFhmSmZTSzdCRStzc3dBNTR5ZVFxb0FqVFRlWjlkQnZEcHdSYXROZ3lzczhu?=
 =?utf-8?B?aWtnWGprRjk0VGUzeUFzejhTNzZGWENXWnJaWi8rMUNBVWpPMksyd0hEZHVE?=
 =?utf-8?B?Z3AycU50di9JMXRsK3dYOU95SGdwSTI5ZisxRzdzVE4raE5nZGFUY3ExLzJJ?=
 =?utf-8?B?T2xaWW0rYmZCR09Jb0dUV054T3FxYVpmZmk0UFl3T3Y2ZWRiRUtOVnRkQ3VM?=
 =?utf-8?B?aXVGaG5MTzhuWlRhckwrU2lPQ1NzZWI1ZVk2ZEJjTUNjSEtzWTNPMWIzbkNL?=
 =?utf-8?B?bEdJMlBtcFdwMUFmWUFEajVJUFovU2QzT1oxYUUrM0dLaEEzc1d0aVljbVRr?=
 =?utf-8?B?dmtnSjJnblhYU0VuT3ZsS3RxM2E0RVdLbTNXbFMzN2JWM2JZcUxRbWx2cXpT?=
 =?utf-8?B?NkN4bUxBaCtFVW5KMmhJVzAvTXNIYWlwd1pIZ25ld1dIQnBESExQRGVCdVFI?=
 =?utf-8?B?YVluVm9KUExNRGlYcHhZRjRTRG1waHpWZGQ0T1BabVlGcWIzWDB3SEZTa2Ez?=
 =?utf-8?B?TjhxRWczZTd0TXorcldLOUhKbEFLaERvRXlmRnBXZ0RRSTZvLzdLN0dVY3J5?=
 =?utf-8?B?TnQ4WTJhMTBuMC94VVhrTnVFY2traDZESmxBMmJmRWs1Zm5PSEpQd2FoT28r?=
 =?utf-8?B?cFliWWNEVWMyU2xFZGZCa2hkOTdDdnI2MzRzVjRRc0piMG9HQk9wVzhyWlVp?=
 =?utf-8?B?ZEVNVlNBbUdhalJFNFBCKzk3Mnc5ckdDd0wwWDhFYkdCemVMNThJdkVkcXNK?=
 =?utf-8?B?T3JFRGZOdU9ZODUrbEsyM2cvTVVBcHJydlMyak1yZnlnYjlKTE5KcGNicm5x?=
 =?utf-8?Q?32juf8FwLoiiaYpBWjA1IYKyUQZiDr+YJQ4XKsc?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c383514-ea79-428f-f6fa-08d976ca7138
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3573.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 15:23:30.6165
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UWaQvQTLKvxsGQpQ5UsDq3nMHHNzBqW7Wa8xhZy5B99uFZ6to1kfTTAt2R7W+y+mruq1cBB67/LxRNNK9ivVplYsSnxF1YpCbSjwlTOZr5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB2423
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10105 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109130102
X-Proofpoint-ORIG-GUID: 3oJTlwv_M4XRxEHGBuzILVLY2WoISl5n
X-Proofpoint-GUID: 3oJTlwv_M4XRxEHGBuzILVLY2WoISl5n
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=Zz3yutat;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=sfkjgTQt;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=eJpt2JMX;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 michael.christie@oracle.com designates 205.220.177.32 as permitted sender)
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

On 9/11/21 8:51 AM, Ding Hui wrote:
> The commit ec29d0ac29be ("scsi: iscsi: Fix conn use after free during
> resets") move member ehwait from conn to session, but left init ehwait
> in iscsi_conn_setup().
> 
> Although a session can only have 1 conn currently, it is better to
> do init ehwait in iscsi_session_setup() to prevent reinit by mistake,
> also in case we can handle multiple conns in the future.
> 
> Fixes: ec29d0ac29be ("scsi: iscsi: Fix conn use after free during resets")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> ---
> v2:
>   update commit log
>  
>  drivers/scsi/libiscsi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 4683c183e9d4..712a45368385 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -2947,6 +2947,7 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
>  	session->tmf_state = TMF_INITIAL;
>  	timer_setup(&session->tmf_timer, iscsi_tmf_timedout, 0);
>  	mutex_init(&session->eh_mutex);
> +	init_waitqueue_head(&session->ehwait);
>  
>  	spin_lock_init(&session->frwd_lock);
>  	spin_lock_init(&session->back_lock);
> @@ -3074,8 +3075,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
>  		goto login_task_data_alloc_fail;
>  	conn->login_task->data = conn->data = data;
>  
> -	init_waitqueue_head(&session->ehwait);
> -
>  	return cls_conn;
>  
>  login_task_data_alloc_fail:
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3c40a1af-5f13-0e93-67ad-f1ccd4f1480c%40oracle.com.
