Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBVUJWWNQMGQE2HEZVKI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EF6624996
	for <lists+open-iscsi@lfdr.de>; Thu, 10 Nov 2022 19:37:13 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id n1-20020a170902f60100b00179c0a5c51fsf1884564plg.7
        for <lists+open-iscsi@lfdr.de>; Thu, 10 Nov 2022 10:37:13 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1668105432; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8RuSCUIqHXuJYD1Ux1YeLZxonOjvKLZkBQ6HhPAQrwTf5ei0BQmLWIqk2z4u583hR
         gXMgjyIRaexD0IoW0rTbbEGMoIa1JlQM3Br6mrE2xo/nErrcJBwC441QaKwU+2ZuSUn9
         T+cRyteG/QAFsl8PLBD2ptoIL7J4iC08TUIbv7A9d+B+FYh2j4yHQPyuJi3BA05yty7R
         PMYnaJ8wts0RyaQYUsYJ85LKmHfLdM6ddKZiWh4JFzIo5+NosLGxpffsEybvrLs2Uk4L
         zW/S2bQQ4nnRjKOtTROFCmDcUztLEsxezGnvudSYhXCumEdKzJg+WnJyyf+f3wnQQF82
         smOA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=EawCIyYx4XGoH4qqzIWJDWrMNT5mAOsshoLZmhVpFiM=;
        b=blJpjNSSG6XNgAhydCf2On3QwuR6C190xYUCpFbaW8PGDNQJ5u/ZJ05HR0x0F++PxF
         2WYh0dLUbfv3rYZzVD1rhubWtepx5MKCSv35cEbwNcyvyXAgqzUo5CeI8LwRnD7NbsGu
         C8lVhjrjYnh6jKqr4wynnXWeZ1QaNyNyjGyVXW4lX3y0T0FM4a4t6Kxqz3elE9BUEXvP
         sh7jYS3l0dzrFozYjHigPRACSWlWwxlPQAknw0a1pg39FA/E6S03M1TqcM9I2aMHsU3a
         98QrbfLc6mnntRqV4XmKWuVkDKsSoJVQAnptRt46Scjd1NkHgWEIU0KXmtpnyuA6K6ui
         0txQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=cPZUhJm8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=I7DByQMU;
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
        bh=EawCIyYx4XGoH4qqzIWJDWrMNT5mAOsshoLZmhVpFiM=;
        b=efsnnm7It+fyUCxsDqO5oD7ynGvvGO5ryV8SusAVXuE7ZMHzxRYs3QD5v9b3t5PB8O
         7Z8OKEt46ZYRMwFKCpOADncGYekwv2+U35AVtEMrch856gYqvg+0XaftHeBIpdH0mWaj
         G5Yn7Yz5Lhp/kXbI9kPhZL5uEH11D49XBtunamJrbetxh5SoinJVjfgkEOAn7hbnqet4
         UW/VGssMLUQRodRfDogfLKtiXAAgTgtxt2uA74abyeEPHtOGYIGqwUuJQx6rghYJwG96
         HIWDiOhS6tpJAaxpkZC2W4CP7GVzcWPs3VmIFSUcqCjyKduKk6z5ozH0TPpn87QwPMYM
         mLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EawCIyYx4XGoH4qqzIWJDWrMNT5mAOsshoLZmhVpFiM=;
        b=6t895KIMMj0gQhICp+31DmuQHsD6DYj8Dxa9xRhmDV2TUey4sm1k7lABV89vOI9FT2
         j+UzB76n0hB75zlOWePOBk275HgRV9b1ttxeqmqaAe5OOGbC9uIqGPibU2xh6gwIsv5p
         QR3Mksspkon5tPy8WHbKspInaVHLNd3v3CmT3yv8hPhqOmqXPWkwJavuCz5knSTXhM6y
         6qw0X2RsQYFVFE1E0Mf+FjMaZWrtJCW4irkkClSzUF5dyZVPId5B44iHPSC0/qLxDEFk
         pOyom5CUsAwaRH5CuWnMDZeRm2D/YKm9TfvN/xY9gulbLD+KYXm99AHC9szsyQN13WHi
         dXJg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACrzQf3b36uFdycBAQXjrdSkldoGYwZzSaHIO9nA0D1kCLBwVLY/+j+6
	S4bcJ9WQCySe7pUCe69B0L4=
X-Google-Smtp-Source: AMsMyM72Q1JVphgBeQRQ6CJaZV/HZ02LlQ8kCPTqB/6dsm6wjlraloqqT9V7E58iVhBDap9Bs4KXoA==
X-Received: by 2002:a17:902:dac7:b0:187:411c:4f19 with SMTP id q7-20020a170902dac700b00187411c4f19mr46512634plx.100.1668105431897;
        Thu, 10 Nov 2022 10:37:11 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:5d:b0:56b:696a:9a6a with SMTP id
 i29-20020a056a00005d00b0056b696a9a6als1503002pfk.6.-pod-prod-gmail; Thu, 10
 Nov 2022 10:37:09 -0800 (PST)
X-Received: by 2002:a63:fc4b:0:b0:45a:8ae6:4dff with SMTP id r11-20020a63fc4b000000b0045a8ae64dffmr3023354pgk.512.1668105429588;
        Thu, 10 Nov 2022 10:37:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668105429; cv=pass;
        d=google.com; s=arc-20160816;
        b=KB8uUsK+p193hXAA1I40ionSLsk4j7TOf3LdoWBd85yhYdAFPHUWnBGwi4b26Q9HA1
         tqEbid88cKEsOv3TIXzK1wQ1xucvGK9pwO7ahGtlXEYFlkKl3+BevpwhGxascLYo3wpt
         0BQqV69dm0ioMxVECSAStd4m2b7aYv8lpTqmMOqlikdFw0PlZWcLkSXf1Ey+N2RbwYQQ
         nLfgaZK2/uXC5pXGUEVW1sB6iibC8yajN/Ha+GvsTl/uXEfOK2DHexkbWXQ4sutW/Z8s
         wlSaeBHbryH/fWY0FFRouA9/X360sjP18/NwzL0CAQyfy5mHrvxtSfZ6HNB9yIQmlQbc
         pA+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=uGGy5S3Fw97hS/ZsLu1MGGGK0JqcQtPfumiK3MR5M+Y=;
        b=uQXdCJA1ronD+fwe9ZT9rIUYLIHMvgfupeCxY9blCN1UUZ1g/B7er8AwVRS/XlPl0h
         f70XoE+Sg8EfHjAX9rNNcpA7/xG8gb9VICx1MZ+CAAb/WJnKj2wj6II44gB1YjB3U190
         EXxJvLcfzxrF9H+fHT9A2H1CC3O1435lZViynfO22M7cO+x9+Wh9Bhwyvmj1+9Y4KJ/r
         TPIT/cp1kY1rbN+Xqc5yAtLbqH0OuZQttQgccc1s74oYUQe7NNUAsSc06nNcBkL60qqh
         uz7QIdhLJodgaPE4eBU/LcS2mesgaC2KCl9mkF+3ae9M96NV1lRtOEPUmXl1/TREIROW
         n3Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=cPZUhJm8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=I7DByQMU;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id h1-20020a17090ac38100b002025f077b2csi272893pjt.1.2022.11.10.10.37.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Nov 2022 10:37:09 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2AAIQRJX014261;
	Thu, 10 Nov 2022 18:37:08 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ks6jv00h8-91
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Nov 2022 18:37:04 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AAHcqsc014968;
	Thu, 10 Nov 2022 18:11:33 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3kpctfh916-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Nov 2022 18:11:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l1nGZ0qRFe9thsLuwgFzLzeA3uPNtyOnaw5td/GP9mSAfxAfRoktQKxVa0eLh4HNYEjBVR3J5B1uap1yJpPYmKNIPjuzs5uw69ZUNfIbBZwQRq0UL6Z7Elk983UyJ5L5LJolW+g17XrObWav507NPls+rO7rMFNEu4KPXek1trkVeEAKTwKHUVG0Ti0yn6vHFgwA3hiIkuCF6qdJ9SQxVwlwvrna0rDm4tQmM/g/K00RcM3aK/Qjv4W1SuYYw+3LHwsiwUBjRRvpe98V8kfOo29A9+hZKDtIjxFoV7VzZEce8hmj595GU4xxLbo11OF9MbcLCPBzaS/3F05smOEQrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uGGy5S3Fw97hS/ZsLu1MGGGK0JqcQtPfumiK3MR5M+Y=;
 b=IGMIXusUj8BJtsIdEjHEJkDscZJkMjxgRWw21Z9lbG1cdEgKGC9Jvnw6qbZmeMRcEWvnfVGnX8ZFP+TLmNXqV6yDVrs+q7CkoBA72zZ7ZyR9xGHRWXX3UKRuifIUkuqrOMTfBWpj/GFsXIF6Qa8WPU8J8XgZlVOo1prKilJvm7qPwyEd7iYF/fljAN4+s7StSUqOxxhL7OTRutzglbbtbzhnQCCnUZgGL0LpXYByOkd3VJqgS3rAT7wOVvGE+wQzEuv11s0ACQKvxm4D0W8KB5EdHf6TVjWd2qaPARG0xty2p3FIsO3VfwTOw22rElfdbKU4HzxiLObqZXAMpFl8fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB5242.namprd10.prod.outlook.com (2603:10b6:610:c2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.13; Thu, 10 Nov 2022 18:11:31 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::19f7:e081:85b4:c5df%7]) with mapi id 15.20.5813.013; Thu, 10 Nov 2022
 18:11:31 +0000
Message-ID: <f1a0a01b-e934-1ef8-bd23-821d855e976c@oracle.com>
Date: Thu, 10 Nov 2022 12:11:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] scsi: iscsi: fix possible memory leak when
 device_register failed
Content-Language: en-US
To: Zhou Guanghui <zhouguanghui1@huawei.com>, lduncan@suse.com,
        cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
References: <20221110033729.1555-1-zhouguanghui1@huawei.com>
From: Mike Christie <michael.christie@oracle.com>
In-Reply-To: <20221110033729.1555-1-zhouguanghui1@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: CH2PR07CA0048.namprd07.prod.outlook.com
 (2603:10b6:610:5b::22) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR10MB1466:EE_|CH0PR10MB5242:EE_
X-MS-Office365-Filtering-Correlation-Id: 15144344-e7c5-49de-52f0-08dac346fea3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r912TIrXI9sw0DYKm+09Xl0Ee5rthVyd9NQhXxB2Realq9SAB8XaYCN89o6Yr0U32PBDk2zyocfMtQlRC8petynBRvFZ97P290+Yl4dbQ9FoeLz1+oEUOijAYsaW7gWD8NrFboVISiLQ00g5U0imsrWa0gZYIAKMzsiVLMAzuN48C1sBFg2YYWVw+D4PoQ2sYqLifBwl8Wmu1YskFE55YrBI8zXD/WHUfrwfjlYG+V5+i2oSrpRUY/Mt6RrpY2qNZnvYqnZd1kuv5OPguaQkQeZLaBptI/VLAtUi6d/Z00Hrzg4dVSES+GIVKLWjSnx6Gg0fYnby5y6r7FwJMUFNvBmLt02jkA3jfg2nS1z+OAP8OkbzS96okVlDGEH8HI0GbnhOBnOZZ6zCfJs4uWNgZGSCPNSb/HOocAlPKLt2GfKnvyeoUTEEVPyh8ziNyvyJS4CBn61Azmn7AZrbYlA0rAT3weXYjIjKX9GR3NGsk3y6J5+LCepBk2tCuwaNDzR/SNO8liQV69NQRgjo7qnDpoN475PtpUh9MgHjwuvGQfoWd0yMolDAswiRfZbafaNT8f1W/sR6mLDEcvsFbC8TYxMlEkJb4p9nSzmmkenKPdpgbq+CVTX96MLAfoaS4KpTW6h3XbcO37sU4mtUUIISM8mncaVM/Ayt6/9nFyWtsGOMPLISmPXDk1hJKO+RRMxKLCsaFBPsktRaNXaVPqCaahQtxb7v3mdrjWouuZqqZ6cIgp0iLf/Ktes4K+FkhB6kLuxtao/nk0RYZlUTYZWVhOzaM5UNVMEsZvElZBNuJIU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199015)(31686004)(6506007)(4326008)(2906002)(4744005)(38100700002)(86362001)(31696002)(41300700001)(5660300002)(8936002)(186003)(36756003)(478600001)(316002)(66476007)(66556008)(6636002)(66946007)(2616005)(26005)(53546011)(6512007)(8676002)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHJ6YXFzaVpvRE5NbXg5dmdEVitsUU53LzNBMEdQZExDbWd3dmNuYWVHdjRz?=
 =?utf-8?B?VU1TODRNMFZNaTlON2RLY3RoU2VnQVRhcEcwam9nM0hCejl1ZmNrem9iSkpF?=
 =?utf-8?B?YU5TZCtudkJHNDYrT3VOeGozdzhBcitwV25ubU5EcWo3Nmo5SThTK1dGVlpG?=
 =?utf-8?B?cE03M25ZaXBnUjlweENjRGJYNXFzQjlwVEJKS2ptcDIyeEVGTmthWUZBTDNU?=
 =?utf-8?B?dVB3YUNDZldhVmZMajRaN25ReGpoYkw2dlAvRkx4SEVOeHUwcFZPc0NDM2dK?=
 =?utf-8?B?OERieDQxcEpHKzZCb0pTZm9ERTZQMENpM0djTXVGdnY1Y2ZLRGpJRzlaRTJy?=
 =?utf-8?B?dkpvYmt4TVJnUmVMODZVMnZrZEZZQmY1SlBObFFEb1VFS20zcURXcWYvZmhF?=
 =?utf-8?B?K0tHaklKdmJjSFQ3aTZHa2V0YWJFRk1EenJUc2lYUzd1SnBBaGdOWUljWWpI?=
 =?utf-8?B?NEFNVUVCdzN5dFpWK0hhbWNlUmdqRnhWK2xtdGkrMjdJQkQ3UkdQYWZWejhF?=
 =?utf-8?B?d2lwaUJlME41NHdBZ2IvWmlkcFBHeXZTblUzbFkzZXZGallIaThuRnBJU3pH?=
 =?utf-8?B?aThrT054NkFvZ0VRTVYvRnFtbVZMbzN3Qng4dlJqVisvTlNzRHJucXNtWFpE?=
 =?utf-8?B?dWc0U1NHWVQyOHk4NTFvUFFCQ2FFc01tQTM0T2I2ZnJlcDRxN2VqSHdWUHhX?=
 =?utf-8?B?YTVEa0t1Y3BndXNrYTB4aEdNdXRNY2NVV0ZnUWVKZXRhSTR6bG84dmQ5b1Vu?=
 =?utf-8?B?TnlCUTVnanpVTzBuVE1GbU9ZRXBWT0xaSW5wY0dzVHNubTBpNGhqa0hzckNP?=
 =?utf-8?B?UnFnUEdrVFJha3B0SUpBbjRPU1NjRnRlMmVvM01yc0ZRbFErRml1K0RKdHBV?=
 =?utf-8?B?NzJwRzRwSDZzS1BaaWxSK25YTjlpZjBYVFRoRytiVFBncjcwalE2TGpWNm94?=
 =?utf-8?B?V0lyZURVdExtZ2k5OEo5NlI3bTZ4VGxrbVpLbVVxSVB5VjhwdDV3TE9NSGZX?=
 =?utf-8?B?UEZXcGd1dlhaZDllaGZhMGxudGZKN2pRK3dWdE5VQ1MxZXJ3UCtyelhIZDY0?=
 =?utf-8?B?OTBpbm80UElYMmh2TUd2aUJubXZjc0Jod3FKL0VHSmxlT3FwTFgwV1JQaHZw?=
 =?utf-8?B?YnppUTJUUmpTMXdpT014a2RYRUxZcVVUUGdVYndVU1IxT0lycnZKYkdhSFkw?=
 =?utf-8?B?Rk9JYXdnRlBPR0xrdTdpTUU2cThMR29MRlErZUpaeHNNT2ovcXovTzNVY0Jh?=
 =?utf-8?B?dzI3bENrbkRGeUo0ZDdXOFhnZDhEZnNsb1hvOVY5THdKdDZIdEszK0JEdlhB?=
 =?utf-8?B?T0kwTmorWnVQQU5JOW9kbVF2NGhVR014MWpKVlNERzBPdVppZWEvTEZmMXo0?=
 =?utf-8?B?emorUkVKVjdkeWZKVlJtTUt3TUtzcnh0U2xTbE82QW5RUzBCSit3VTA0bEF3?=
 =?utf-8?B?RUV4V09BZUVobmlhNTNuSUFMK3pxTEZub0FJRG9ZdG9HK2dZazJURVZJNkVm?=
 =?utf-8?B?Z2x0enhYNWpFNEtsdTFXaVBjeW1sRG9lM1ZpN0xieFRJMDFRTnM0cmoyU1NB?=
 =?utf-8?B?UTI5Qmx3QUJCNCt3ZzhyK2YyUkR0VFM1a0VKUC9OZW5JUjRCWEJVVWR4Rk4x?=
 =?utf-8?B?NVlKaFdrUWdndWhJTlAxcVdxa3Qwci9YR3lUVTd4VDMybmN5bldNMmxYNk5i?=
 =?utf-8?B?WlFZNVV2c0tNZnA2WUZYVkJNbGJsazlaS1NBSm9sTUlJWWVEWFM5Q3ZiV1ZB?=
 =?utf-8?B?dU9USzFVdmlMd0l4clFZNk42ZGRNcWZxcWVDNmFWekE0ZU9YSnlTT2U5NGNm?=
 =?utf-8?B?TVRNUEd2Yy9UeE02aTc5ejhRcW1pcm9lcXZnTXJWR3RZRlEydXFaUlJkeWR4?=
 =?utf-8?B?V3YvTVJhbU9rMEpZREd1TlRIbUNiSVpKQ0Vsdk55RG5VeEQ5MG55YU4zbjVB?=
 =?utf-8?B?T1ppdW02cnJFQUllQ2dJUFhnT09wR1ovQnBrdzg0TTJKNEFBNEl1VUZiV0w2?=
 =?utf-8?B?YkZrdXgyUEwyaHpyU3BYNGNWNkczbUZuNmllTmhiMnJ3cHpFTGl4NkRPWW9J?=
 =?utf-8?B?dkYzK0ttS2R4RnAvdERxd05GUVRhRXU0WGhCc1pselBvdlgyUE5CTEtxbFlo?=
 =?utf-8?B?WlMrenoyeWdVdld6T2p6Rk02WW10eExNRHVxUDJtU2tsK3MySHpURGxJaUM1?=
 =?utf-8?B?SEE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15144344-e7c5-49de-52f0-08dac346fea3
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 18:11:31.4996
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5QEMv4ej5IfUineVACn76MAteEubWVGC6kebwaEC/HPBZbuZU4lzc/ryMVnUjm7EmRZbUJqnZxyAdzjXZo2S6Jq7dzEkOLMn9qgkgV+P8Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5242
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-10_12,2022-11-09_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211100127
X-Proofpoint-ORIG-GUID: gOSLZyG7DT98zJb2PLnv-5CvLK_yTy85
X-Proofpoint-GUID: gOSLZyG7DT98zJb2PLnv-5CvLK_yTy85
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=cPZUhJm8;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=I7DByQMU;       arc=pass (i=1 spf=pass spfdomain=oracle.com
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

On 11/9/22 9:37 PM, Zhou Guanghui wrote:
> If device_register() returns error, the name allocated by the
> dev_set_name() need be freed. As described in the comment of
> device_register(), we should use put_device() to give up the
> reference in the error path.
> 
> Fix this by calling put_device(), the name will be freed in the
> kobject_cleanup(), and this patch modified resources will be
> released by calling the corresponding callback function in the
> device_release().
> 
> Signed-off-by: Zhou Guanghui <zhouguanghui1@huawei.com>
> 

Thanks.

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f1a0a01b-e934-1ef8-bd23-821d855e976c%40oracle.com.
