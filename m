Return-Path: <open-iscsi+bncBCHM7NWZ3UFBB5VAT2IQMGQE4CJ3QIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC3A4D1EB8
	for <lists+open-iscsi@lfdr.de>; Tue,  8 Mar 2022 18:20:56 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id y3-20020a056602178300b00645d25c30c1sf3937126iox.6
        for <lists+open-iscsi@lfdr.de>; Tue, 08 Mar 2022 09:20:56 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1646760055; cv=pass;
        d=google.com; s=arc-20160816;
        b=CbV7GE/u0x/SVemVi5v0Xer+rpMjPvkrqKRGDuZAOtMDD53rCkhD2k/TfAWtYo+EMG
         ZqYZkAFmmMdWuCoJKRso2AlxQ7vjhwn7b1rJZaGEqI6K2dksbGrsbX5uVULNHy3NgceN
         aRtshunJRCvnKZOrerDNLrxp+Y2HSQbWxTSG2LKh8ccnpSfoQa9uBNWaU7Pm/Crjhx+S
         p08s9snQBRo6wwNbKwsfAat1l92mFRQnbo2RMBcaqVEpf5d9bSS1R82dfP5RdYZGFyom
         eSzk65pijb9VdIbie7BPsRou2BpGf5Rt4XL3vfAp1+TQTfbUjFDzVh4gpebonCVdXi8Q
         B1KA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=vnkPU9G4k/E7gwCkqqtIHcKF2YaqFWl8285AZavfnvA=;
        b=wbSMgQ6ZJ/9q0begAEhnjMLQLAlMFrfOh8fSpqrM6v5OugTgEXwv2jyY0xnneo1rI3
         k5bdNz5qHHfjK2zeFL7u/CMxHudSWI2vMLD37UI7fb5R0IFDcdWMEkXYUdnYQ6BhgzK1
         W9R6+BE0Rk3NLDxqcJuQ90vPKeqnr2oyb+7gr0geFaiWfu4JziyWJyq6BEhKIf5E+7s9
         k4b8HMW3ev3QL3Bjm6DG+bt1MNFj8Hy2BmiBoADhHk74YDuic1FqP0fvtNi3xIe5yzJD
         FGOg4KiOKQC0ICxypgEXLNz6+7YUNgoD47dVlqyhMnnUP+4hEoXAYdo4jHB2h+rxZLR/
         AQyg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=KWPrJ7Nh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=c56wNHn8;
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
        bh=vnkPU9G4k/E7gwCkqqtIHcKF2YaqFWl8285AZavfnvA=;
        b=ozaadHaaMHHoKwaXQG+bCWms3cRVoVXH7TTEi6jN/dCwCEYorOoqNd6FAsoRRQIuMs
         vtLZia3ZAUbG7Gqm+9jh6RGB0aGx07wXBw4WoEkY5Pm4dmfedaJCEWOV9w0s1ThneWJq
         knQ7j5B84rcX3n+aw+AjfDqfuudmzNMdrNuivK+++zsRULghN4GMxk3r7jUZ2jBv6cgB
         GHFxFxG1BFLMy6P3Jt0YUjS2agqwoyBqNFd6Wg+FIvn5p+WUoWRZC5VNpWvKzjSf17YA
         SotKOhbUlxANf/lM1FLgntBkV425z95s1ZRB3ojsYJGYeQC5EseF62fCFqDqNJ9ZusVo
         bGKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vnkPU9G4k/E7gwCkqqtIHcKF2YaqFWl8285AZavfnvA=;
        b=y8NfbH5TgEVMYjTwrToLUN7LQ9MUAjdWK6ns+afMwBL9cJCH0m+fo9woxKzy/Aazoe
         UTyxx+grjJ9yZa7sSB5jozTCdwsHTd0GF9mEkrpb2YVTEENLEAPUuyc48KyrDCFpVila
         OBDBXlCWcmUJKG9n1POFqBuDeXxm1gO2NiYzQ6xMej4R23jXlrw7KbYxk+HhoawBk7su
         CO6zAzyF3G/XFEbasCoZyfQJ2JufHHxehHHD2wxgK2WvqlZrXqox0III2m7/+QKbM3Wt
         VsUPfS+Ad9LUkmQAWrtV09lovz4oVEAz0RDDAoGh0uNWm1k+qNAT1naeQocgz9NjMzZp
         5hFQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5326wlfzEfQAMcGj9ES5l2/MN+cDGKi3OgDrPobpxRNjl6xw6frE
	IOi3ks4QDOw3iZfx7sNbre4=
X-Google-Smtp-Source: ABdhPJzqV/9hNz77SNut1TcsQBefvbiVPmibhb+zErigHlGp7UrTc0nIxiTNvmHXruKsnP6IFwDq1g==
X-Received: by 2002:a02:9f10:0:b0:317:d38c:ed6a with SMTP id z16-20020a029f10000000b00317d38ced6amr2514792jal.100.1646760055777;
        Tue, 08 Mar 2022 09:20:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6638:35a8:b0:311:86a9:1cf8 with SMTP id
 v40-20020a05663835a800b0031186a91cf8ls2850144jal.11.gmail; Tue, 08 Mar 2022
 09:20:54 -0800 (PST)
X-Received: by 2002:a02:c6c9:0:b0:308:3586:f407 with SMTP id r9-20020a02c6c9000000b003083586f407mr16361725jan.173.1646760054365;
        Tue, 08 Mar 2022 09:20:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646760054; cv=pass;
        d=google.com; s=arc-20160816;
        b=WltIrPwly7ldbAtzamwGTCFcyPbIGhJdotnSlosDAyDLaJhDdlgGeQlU+nxDa2zAMn
         suvnzqrw9xPWB7oliPn8NKp1M2ZMydNNtIPUeoy3CYT9qOSDp3tu4s+pM9F5zI/Ne4FS
         T27OIVFXRMzev+hY4z7qIcKonvIlk0a0ryt1kH9yPmKkilDOJTiUNePLNrkPzfCJJTIK
         hyEnJbLTyadxAb/9XevR1//b1JSdJB1ssrAJ0KpKAgmrESvH3q1vshm7VaxCA5B5YBfr
         EbomLGOfJG9u19nNIGLRXSEUhG/gtHTCH+Zgw2W+fidHG0LdxARN0pTQGuPc9yA+Jhcz
         LHAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=sTVguv2PxvF2++CGyjbG8B7i8Aop2IArIuuQRNvu9Zo=;
        b=yrwEoZu/gKWNw2pnZ/w6k5d3gMohNQqw3dLxRNHvSTZayMjGSvIOVr/A5QBokYIPtc
         pyTqr/EdYx1xbRh55LY+jEDKSS8/ttZAYFiokI+58xLWA8BXA4mGAqKox2m32YWiU9Vy
         HIClKDHc92gUAn8TUMDA5AT7WxFqymUavhoDM+F3QfopIHqabDT57bgGSADLTgnAqaUM
         blxXRJBgNeq27Z2Lgv7cvL3+WypD5cxkPmHSQ+L5l+tKRY/Cw9OnC82+2ycZXDGFR3Ks
         NfeN4BUEDAS3AsSVliZ+NVQGJYUhu9GCf71QZBcL2RtMKViqlXmykiNuhtHNMjnHT3+K
         ++aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=KWPrJ7Nh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=c56wNHn8;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id s12-20020a056e0218cc00b002c1a7c1011fsi775189ilu.2.2022.03.08.09.20.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2022 09:20:54 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 228GmswG018604;
	Tue, 8 Mar 2022 17:20:53 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3ekxn2fra1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Mar 2022 17:20:53 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 228HKO9q072190;
	Tue, 8 Mar 2022 17:20:52 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
	by userp3030.oracle.com with ESMTP id 3ekvyv3sbk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Mar 2022 17:20:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4KuTtv05v9hxxo/1v6E5OASpUvoJPawfI2EzWtpIhp/PTMPvYnqsWkRdPzpDOUi9AWnSB7Tn/ziVF6OW+K5BWrFdcXknqYVLZ7hisj6x5Y+V8vgbdMpZYzO9jEeLsDqWuYROoCjSXa2Q6AGOnP5MlZ+y1LSr5yBBjk7P4np6dY71920mmuZ5egaFxd+WxDskHeu0nMxttIj7pPE4qxClTxxZTFb43OTjDv+h60YtWwueOvh5y1WEdkcBc4ZrpOhrbCoSbVOPJjW2xDgDen4eq7U5zurEftAYJENnvBVwRt4Okqfs0SaIiygcySNMdTh4Ellj8cc5VazxP9rcBVr8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTVguv2PxvF2++CGyjbG8B7i8Aop2IArIuuQRNvu9Zo=;
 b=Yp533y/V8B/ItHSIaofAWBSFS2O0ruRG+XLo9/Wpoj7EMGXXFCCxmnRyKMz7VjaQb65V1aEFXy+Haz4t3uk72sPoQRDQY9udnK4CImocjPuRhF+f/SB9MJnp2V9TOSd13AmxGodxjOA9KlTHTu3kIo8k5ZeidBwbKM/12Rv70mPcxkHqWgLkcuCUGwA/5PgtI29IMFAfPUQMDkik5XpfMx5IPaOebsZW30ZFKlIwAxCqv4AtfjIVZgtCVuC5IxEa99c3s7TVTcpyZpoFVCm8D233DX8eOPreErBIJsDyflgJrevpxg50qsDGkk+qxLiTQm5X3aCDmVnHHEFZNMj/XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 BYAPR10MB3222.namprd10.prod.outlook.com (2603:10b6:a03:150::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Tue, 8 Mar
 2022 17:20:49 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3dd8:6b8:e2e6:c3a2%12]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 17:20:48 +0000
Message-ID: <bfd40073-62ae-e458-a869-b0eb60414632@oracle.com>
Date: Tue, 8 Mar 2022 11:20:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v2 3/3] scsi:libiscsi: teardown iscsi_cls_conn gracefully
Content-Language: en-US
To: Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
        linfeilong@huawei.com
References: <20220309030916.2932316-1-haowenchao@huawei.com>
 <20220309030916.2932316-4-haowenchao@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20220309030916.2932316-4-haowenchao@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM5PR19CA0029.namprd19.prod.outlook.com
 (2603:10b6:3:9a::15) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea040348-266c-42ae-d565-08da0127fd04
X-MS-TrafficTypeDiagnostic: BYAPR10MB3222:EE_
X-Microsoft-Antispam-PRVS: <BYAPR10MB32222EDAFB0BBE53CDF5D6BBF1099@BYAPR10MB3222.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tt6Y8932cDVvET0BpQH/lqL18uvIJCtf52oNfOC7dE3DTpdtz64EyqP+YsTrP6rC3jvVnDmSoscS1y7xFg0RbOTaHMiAlMiiIAtsLr5fobA9eANIRDETaS95wpX4TQLwIsG99xSI2LoSoF/6/dCKU9Grt6P2igkSEgYk7N9eFnz1/gmVcZg2LHK8IehEC1ASf0Uc4NmGe0ZHkldGOQZmSMtiNU7jUxOUMz0nEfeOREBFctjL+P3kVcUZl6UTF6cnX5jJr5AXbGHpX5D1psjEgPD9oonbCDLk8e3NwqeSevkslcJzZmaAxbvGaHMM/E7lhSIAUGfcCtNw2riNUHYd8CdALfVNEcEd+aBFtuAKPS6v8MRMyg/l+j5WDq7wGOysJUkaeofuEmssoJJFQwDxN+OC64PaMbz/4KRggKzUHBffvERJEWLBbm0ial1gwNGqkg90SJSijZfaakBDqYlkqxXiztDzS4/bVl/IaX5X7uV1tyiFrdQgeWcESg30QKBR6G75dIu5pKw5GB42bGwsDplqKP/aFRCSXYudnb+MAwHgmAfTxhGgaUDVo6emjF02S+62iGXwpfBA/0CK94HAIKcwXd3CXL89BtBGyJG3J/Fl5Wsyvj8deMWFhMiU4V/1hxxpu+FxWYi0mR8jxR9N5OWVetg2AXSvNl4FH0llV7yUQcJvA/oNvHyNcXOnBVwEo82528LF4dGHmvilYL0CJ4QKTRCEgnSPHMcc/90Po7ZpRDdZW1MH/F9asSQ5o2QU
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66946007)(4744005)(66556008)(316002)(6512007)(5660300002)(7416002)(8936002)(54906003)(26005)(66476007)(110136005)(4326008)(508600001)(86362001)(186003)(31696002)(6486002)(8676002)(53546011)(36756003)(38100700002)(6506007)(2906002)(2616005)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0xCTlg0OEhvYkU4TlBmM2FjcHlHc0lQVkhGb3p2YnZWdW5GdEttQXd6b2xW?=
 =?utf-8?B?UStRK2xJazBacFpVQkFiVEw0WnZrK2Eyckcwb1MyRUpwdlcyUERZUGt3Um42?=
 =?utf-8?B?TmhuRFVhMXIrWWZkRnljVHdNbTlvakdtYjd4eDg3K3h0VnNqWU4rT2xoTFkz?=
 =?utf-8?B?QXRjVWhlOHUzRk1vUkFLK2FHY3RxZzVWeEx0MXBWTWZLL3RXTU1nRUY2UDVy?=
 =?utf-8?B?SytuWXVBQU43SFdWaTl0SGpHMHVLQzFIcnYyL3ZtempQMTlScjdZK3QzSHRm?=
 =?utf-8?B?c0VocHI0b0d6MFBLMnhvUlovSlJWOWtvRStwL21rZlNRTjJ3VVgvRkZtalJu?=
 =?utf-8?B?Y0oyamJCSHJtdkZGQlREVUdVNkEzdHFZcnJRSWdsd1h6NTVwSmhEZjNCc20v?=
 =?utf-8?B?R2lmT2VyQm5lZjNCTkNML3hqZG1vcEZXTm5HdVRwcFlnZEwxMWYvdkRVQWFJ?=
 =?utf-8?B?azRneFdKV3FwbVRsdU5uSzRGemFvalh4dCtoK3BueVFZOHlIWWZLeUxKNE1m?=
 =?utf-8?B?Uks0WVJpVEwvSnlsSm5UNlpqSU1wTitsYU4ybS95VWJRZEFBamJnUWdsdDZy?=
 =?utf-8?B?NDlTbU5rTGxiYVdnc2QzTVI3NHFYc2dEeHZOOU1WczdNb2dmdXBOKzJsKy9n?=
 =?utf-8?B?THpjbDl4TFQvVW5sZEd6Qmordkp6eFR3bndRK3owTkIwcWQyQkZRT3BEYk12?=
 =?utf-8?B?d2kzNzVnY1hBTEFMR25ZV1lhNWlZZTg0TkxuSTJ5MkY5NFAzT3FTZzMvNnlK?=
 =?utf-8?B?eGo2V1NXM1dJRVZvaFlKK0N2UDdKOTcrOFBYb3NNbGJnclNNN2tmM1UxQU1C?=
 =?utf-8?B?L21PYlAyZm5xRW1DdERjdG1qdXlvUVhGaHRMU0hVRmdDNFdMWFM1bzRmZ1h0?=
 =?utf-8?B?NGVZRlZqTGNBNDZ1d1RtcXdxa2czUzFRRjEzT29IeGRyL2I0R1hzNFZ3aUVh?=
 =?utf-8?B?TWxYWG4yTzlSWWNQd2NpL1B4c0hnTXlEcWk4QXRYZzdQYVdBWmhHRnR4clVi?=
 =?utf-8?B?OEpvaWRUbWJwT0N5M0tkK2o1WHA5aTBrTzhvZVZFRDVUUjJWalRmd0JMeW5i?=
 =?utf-8?B?eFB0R0VYR1lHQ3ZYN09sSHFncThLalZjZG9XZ29vejZzbzNSS2dIRTFvSk5y?=
 =?utf-8?B?SFY5eXdYcHlQSVg1c0xPNkxRSWVCUlBrdWQxLzdhQVhyMXZLcDJXS0pwZHNW?=
 =?utf-8?B?UW1uNldWbXJlZkxldC9xRnAzN0lOeFhtRkovVWl6THFpUE5GSDB1SGlQTVRU?=
 =?utf-8?B?STVTOUkwNWdyeWZ3OG9FLzlpb0FuZmVZeFMrRjNEMG9GY21idTR6UkJvU3g3?=
 =?utf-8?B?WlVEamh1RFJWNEg2UDJ3YnN4QVN1Umgzd2g4YUI2VWJjVHlPTGJFa0RpeWx1?=
 =?utf-8?B?REt0NVhlejlpWkVNSjZJZXVZMlFnOGlhUUtOOWZOYlFJeSs1eHZ2bTNkRXBq?=
 =?utf-8?B?RFpsbXJ0dEk4cnBRSXE1WWV3SnNodnV4b1VuMmxCUUV0djhqWkVTRWZzeE1W?=
 =?utf-8?B?WDBGakpoc2VSa2NsSHg0VWI3OVFIUjM0dXdlbVI4aU96cDlvRTZjMjBuWElz?=
 =?utf-8?B?R1R5VkZJYm8zdURrVS8rekVmUklnN1VEL3VRQmNxNEVwVERqRmoxRXBGNFFL?=
 =?utf-8?B?ZFBzTnpNUDZUSXBtTC9ocWlLSFVPbldNWkpabk9IaFV6TFVQV2FCaHNyelM4?=
 =?utf-8?B?RkdzZStEdEdsbXdPS1lWT2grMFpOMXp1cExqckZIa095Tm1iYVJOd0hsU2JQ?=
 =?utf-8?B?UzYwRjhUZkczYVpkSUdGbys2bXYwSmxiNkhZTlFYTFQ3QllJZzhlSVRUYnU3?=
 =?utf-8?B?VUdZa2dwS2VpWGVsTmRWYU5ZM2czcDlCWmJDaFJrYUtKeGU4L2htM25nbmVW?=
 =?utf-8?B?Z0wwMm1ZTllZeWl2YkdLa0UvUlBMN3lQL2pNZkZnTjlleWxkby9pSHJyQkVM?=
 =?utf-8?B?VkxHRHVZU29kTmtGZjgvMlRoWVdoZUhjOC9KVVVJY0FYSTUxRk9WUzVZaDhq?=
 =?utf-8?B?dHdOTHcyWjNzUWtqYUNJZTJnbE1COU1OajhzdnRzUHBMRk9FcEpJNWNwUjNw?=
 =?utf-8?B?YUNZcWhUTUY0ZE11c05uMGwxKzFPY24ySGdVdWN3Ry8yM1ZqNExOUFphU1M4?=
 =?utf-8?B?OEt5NnVsME4zSkJ2N1U2YWs1dFZ0L1ArQ0hPZFg3djY3NWFLY2xFdml2RXlG?=
 =?utf-8?B?dU81RDY1WFZLMVZhdTZVajY2Vk4vNFcxLzZtWm5sQWRrMjlCNC9lQlBZd3l4?=
 =?utf-8?B?U1pVeXhvckNQQThac1JTSFFtcklnPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea040348-266c-42ae-d565-08da0127fd04
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 17:20:48.7588
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MPciBL5K02uLelMoAuYonBA4wNKVtk5ZLxK84D12ESVtZKS642JrbKrTETgQ5wMUvZ5Xz9WMzbSSJJW1Suodh0hdR3evD43nsd7lXj/Jl2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR10MB3222
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10280 signatures=690848
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=999 adultscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203080090
X-Proofpoint-ORIG-GUID: y9qDifxzbM0wBvxaz1zWIRXd2IsevSEn
X-Proofpoint-GUID: y9qDifxzbM0wBvxaz1zWIRXd2IsevSEn
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=KWPrJ7Nh;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=c56wNHn8;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 3/8/22 9:09 PM, Wenchao Hao wrote:
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index ca724eed4f4d..7b4d998708e7 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -2165,6 +2165,7 @@ static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
>  {
>  	if (!iscsi_is_conn_dev(dev))
>  		return 0;
> +	iscsi_remove_conn(iscsi_dev_to_conn(dev));
>  	return iscsi_destroy_conn(iscsi_dev_to_conn(dev));

Just do:

iscsi_remove_conn
iscsi_put_conn
return 0;



>  }
>  
> @@ -2463,7 +2464,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>  
>  	transport_unregister_device(&conn->dev);
>  	ISCSI_DBG_TRANS_CONN(conn, "Completing conn destruction\n");
> -	device_unregister(&conn->dev);
> +	iscsi_free_conn(conn);
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(iscsi_destroy_conn);

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bfd40073-62ae-e458-a869-b0eb60414632%40oracle.com.
