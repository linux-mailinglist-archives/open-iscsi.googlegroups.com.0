Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBLN6WGIAMGQEQYGJGYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2F14B7D1C
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Feb 2022 03:19:27 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id k12-20020a92c24c000000b002bc9876bf27sf335964ilo.21
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 18:19:27 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1644977966; cv=pass;
        d=google.com; s=arc-20160816;
        b=DjMClq6RAVgCKaZrDFaEkclYJghIHo+QAN5nrN0M+Hu008JcWQm3RaOgDLwalMj4rk
         RE2sMheciNBdkObOhzN1FosdfQYz7SCtxJ3TGA8JoDNJIiOBxP3NnLBQeoMPElOzv6n/
         cYuRKnlMELzyi8XuByelqz5WIYaU1AM1TdpqrnNd49QfknPyzEApqYpOByh0GhdSBI/L
         GrDuP1r0AsBuzfEtli5ZzzwBS3kehPZFYg9/DQXJc5RxBIq/BgrsUFE6Bn5jkQlMx1j7
         pKYeWJyV6/OS9sOcgsfpT7BRJ8dStHszDPiJVums51u708bmRa3vtzm2PDbTjun1XwCw
         BZPg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=xnDt7Y4A+KR/eZ036KnDPEOKcH7HzKRp5d1NmIzYh5g=;
        b=z+vPZGriLOWD62V96Vpb20S9no+F+8GeekQguhe85yn1C9xI2ZHpUNWa/k4mi8p26b
         OrYCGrNpM+jUNQXBbnd5LSPXMVxV2JPoNryCrI1QX+cGErWBdglqFmMvlT5OJB5GSgti
         4lNB7PAUZLWhMNZ+1PeSe0BbjwcksIaBmWQlSS3T3w1ocMUDRi4bWUULS7WEkt5g3dlU
         dPs8K6Za0tFp98SVMKhaamvnvAm3Tqh9BzC+V1xtkK3BhxFOLOS822ul0LI3djFqczBb
         jzqqPM9AOY4V7XOk7bviuyiFdMfT47aeV8vd45hoT9wFn9qevp+xZ27pFcLtRniy8Eza
         XL8Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=YdjAankk;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=TiZf3ACm;
       arc=pass (i=1);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xnDt7Y4A+KR/eZ036KnDPEOKcH7HzKRp5d1NmIzYh5g=;
        b=ENUrICDHsnjUqSJA/DgOKUYDrxrJRTIIzb436rgrR/RqyIPCCX8BtKv1NWK0O9xCbi
         WPADKyto2lDm91bbkVl6LfvQmas0UwLunJY3xTeqZxskzFJmYZzC3i99oUYBgHMcikFj
         ZCCona/LIt03blugP3+mJIwjLSyErs3En+1Fak1lpt++KdiNASihzKC52oKGvSUrKdeU
         2kz9DmSCONGMB0fmEyjEHrKt28fqCHgU10FqiyL6nBLOX7y3EQXZzhaQK8J1T6snsxdb
         OwAO8JHKZD7SrwzW1KqjslsJzSYYRWNJhlZ8BofjPzXAbuz4EWJmWyq+Gq7R9mcwZJAL
         e5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xnDt7Y4A+KR/eZ036KnDPEOKcH7HzKRp5d1NmIzYh5g=;
        b=dyrGIFq3QSSph9IwJIaDlb2zpu9vy7XbNAu8rIrSysRi++yOiHZlj10snj7V7SSK9V
         gzDY9KPgDmwolwstPTQEgOzNJ9KjwvvVKLcgQMffKbuhrLTh+CdJFd69MnJrclVgC6cy
         EIZ8gwd0b0arfxHyBsTSwLdRpVp6rTrFUl4F2hNEyvfJkH4GWNaZBGdhfkS4QLFVUxtD
         JJoFZDlttiW+2zPa1rI7Dyth/h/TWaeWhirGADVYg75yaAX0aOg+OhvyuCYLgcz6oUWK
         zNLy+17g4GodK67Wlq+HFWzxxAEioYqukfe4GiQraCTQ7d8raVtrkPcyNsdPSbblJchy
         EgnQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5318CFFlL+4KdLP+Z3T3SH4/B5KUJG6O8C5HYYpKEFVEXfEneM7s
	CbIfRdjh6lf8oFNdoyGVbc0=
X-Google-Smtp-Source: ABdhPJyrLBVcYEHqFFcbLHNhoDvMGlQp+/Yh8QRi46rWGuSTs0l21tSfAtOPPxXGdwdFs/vRnK9hxA==
X-Received: by 2002:a5d:80c5:0:b0:613:88a4:ecb4 with SMTP id h5-20020a5d80c5000000b0061388a4ecb4mr481129ior.130.1644977966080;
        Tue, 15 Feb 2022 18:19:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6602:342a:: with SMTP id n42ls605291ioz.1.gmail; Tue, 15
 Feb 2022 18:19:24 -0800 (PST)
X-Received: by 2002:a6b:fc0a:0:b0:60c:c3a:eeb9 with SMTP id r10-20020a6bfc0a000000b0060c0c3aeeb9mr479208ioh.94.1644977964809;
        Tue, 15 Feb 2022 18:19:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644977964; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3u7mDmsadAsgs3ExAJARIfM3bHFY3M3bOvgxC5hOROQD0QpQslbzRiUr6Up9EPpup
         p7M0VLhU+k13SNbBsAPFUS2cTqrJ5sQbA5yALLJFcGr9dqPMoqRF51KwLvUt03xpj/bg
         uMjSuFw7TrB66/lbD2Oni4nO0JtKf8vhLbDq4SqNSUuhdTo1SNLsgSQkFP8qpcLdSnqu
         hOV3bwvkuJ5IhKJKgSnrxnF0RAa2H0kzwF1I+ZVd4cux4wIepTjhyp8oGPQd1H7jtZX6
         yNyDLoPflRhApft3i3YLosLbh7LbCUVRdj1gjY6GGYnAVOTSvvpPbsNqSGQz8PqMS1s3
         Wbqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature:dkim-signature;
        bh=aK2qL8uF4glVpYFLdvhBB2fwlBVcforwGcNda67f/ig=;
        b=GJTt6I/DTFXkUVD5pt5OobcGG+CckS5N0VVSWfNlt3cw0vEv5MV/Z03KYG3dnPS0PO
         sx9/tR/08/BeITM53uzzTOb5ARbdRU3F8M/Hjqr6f4yKbEPw4pfAg0374Bi5HmqeU1ux
         w7zTNPNYNJPdPpRPZMvF2gG8LHT4O7EFfZDOAtPQTvKcE6g/+hJPjvWc9AVpD0EATOHH
         tbhCdF4vE/frcYVpxu+NaKw1l7U4YxnUyEf4CngzzT3ceZNHunK22JymvBFOpzBlm85i
         CEuAm1AVRd1qfdr8+N5W4yC/4FX8HOWR934Vte7G1PJyoeQGArXaxojllXU61TVZsvS2
         7M1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=YdjAankk;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=TiZf3ACm;
       arc=pass (i=1);
       spf=pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id m17si4393234jav.6.2022.02.15.18.19.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Feb 2022 18:19:24 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 21FMYXIm008642;
	Wed, 16 Feb 2022 02:19:22 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by mx0b-00069f02.pphosted.com with ESMTP id 3e8n3dr9xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 16 Feb 2022 02:19:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 21G2C469148703;
	Wed, 16 Feb 2022 02:19:21 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by aserp3020.oracle.com with ESMTP id 3e8nvruf29-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 16 Feb 2022 02:19:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AN+Vo8aMYphyj2VTVCJKZEglDJ4UjNjkX0z3H7S0GCnCq03TFYW+5TN6HbpAahW5uGjyjJhIKIYj7CjPB8+RzaQTJ5Th7BwxqWCPUMJnxTKNRIyUs+HYQbpmDZJAhfwbgplHz+vnbzHhtA4k6DZbp6ZixKkxhG40iqLXTuaZ30JQfp8oh6K6ADvKpHVY24aCu1PC7mbGmVxHHYJOfnxNHeGefN3OIwigcH+d6O54cO9sGQ8Hf27S4bi/WCaupCm4Uu1b3dq73xgzIB6yTdu4fkYcb2E0iHRSi56U7iAWtL3RJiJxe+8FkR6uMHBOPHHcjUOIhSGaJDUlxGVeorDzpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aK2qL8uF4glVpYFLdvhBB2fwlBVcforwGcNda67f/ig=;
 b=dPoM028/ViJYSvyRBnxbK3XHDf8nHXbHkP9a1Zec8fOvI5dKF0aoK51HAgDbStKNzzz2VKQWDSDenlWNF69d5/ZAKcXOmQwNEYQGtj45djLY4qmejJxI7OOrlXwDHhIjG3dbImFIuSVyX/mI+UGX8tJdUUHzXSxs3ZfXG35CHM3v8GIbP3qBg0Qm7MQSXA+VMdjLJ9LjEWYOVL4Vg9Oa6xmnhvnEKKc/mWsKJ1o9lqK2txYredx9nvWivt5Unq9H3A9ac1dITj0bZoa3UK9EiceGEP/Ztlv+VTAlJmvQXjH+pLvFkCJSFi2CpiPv0nOgT6iS684BhJqRTGRpDUGMgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM5PR10MB1466.namprd10.prod.outlook.com (2603:10b6:3:b::7) by
 CH0PR10MB5322.namprd10.prod.outlook.com (2603:10b6:610:c1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4975.17; Wed, 16 Feb 2022 02:19:19 +0000
Received: from DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3448:8685:9668:b4d5]) by DM5PR10MB1466.namprd10.prod.outlook.com
 ([fe80::3448:8685:9668:b4d5%5]) with mapi id 15.20.4975.019; Wed, 16 Feb 2022
 02:19:19 +0000
Message-ID: <be26ef80-c3cf-713d-2a9f-4fb73cec7e17@oracle.com>
Date: Tue, 15 Feb 2022 20:19:18 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.6.0
Subject: Re: Question about iscsi session block
Content-Language: en-US
To: Zhengyuan Liu <liuzhengyuang521@gmail.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi <open-iscsi@googlegroups.com>,
        dm-devel@redhat.com, lduncan@suse.com, leech@redhat.com
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
 <828ac69a-fe28-0869-bc1f-7fd106dff0aa@oracle.com>
 <CAOOPZo4Z2x_W7i=Vbnm-SsDgj5PndLVtOz6MqRzQxW-NeBwhRg@mail.gmail.com>
From: michael.christie@oracle.com
In-Reply-To: <CAOOPZo4Z2x_W7i=Vbnm-SsDgj5PndLVtOz6MqRzQxW-NeBwhRg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: DM5PR19CA0035.namprd19.prod.outlook.com
 (2603:10b6:3:9a::21) To DM5PR10MB1466.namprd10.prod.outlook.com
 (2603:10b6:3:b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb68dd89-d2fc-4a6d-8b96-08d9f0f2bd0a
X-MS-TrafficTypeDiagnostic: CH0PR10MB5322:EE_
X-Microsoft-Antispam-PRVS: <CH0PR10MB53224DFCB870DF2156230D4DF1359@CH0PR10MB5322.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sDJzrtgF4WukRtKICjX2KmBKra+TUlirweZAFnLewC/IkwPZgR3NyndsTEmYcuBP2eFadBij8x9eH9iMV+6LzMVQcEvPiF2XFpXnYnKFzPYi+XRd1Id4a9RqPCHjDFod8ktXC8n+b9NETvLE2Mw/VG6fKuhE/WKrBfZBdczBlEkKH71X8wDUsk2MJVxAqyD9vHxsnR5O8+PzT0/wS9cw8Wi1cjOGskT8zfsCzqt2htRn+OXm4EXPXi6QD3MzbPgqXln59yidAYO+eCchBdOUS2ErUYITgks+HrH8USu+McxKEfgsSKPkFPhC5mpBZoVzUuoFfrAO2xFHiCc7DuF+o1sy+ixckaj8xdHP5fl5Dxgvo56rn92YwpB0BkbwW9m/i9Y2HsvKxtcP/8bs39mluOFVl/5O4rl4hsvD9LFQ8522rU+6MsUWHiuJ5jNTZt19Wf/GJXIO/Z87W3JLMNQlJp73N5FE38a2hhyx8QAYz21NLdXxraFTAQviHgv2tb9l6i7M5RAaybxV4WAmIhSDzHFjii7kjOolzJHoUSsOB6ccbKABjwEpkXtmy3qrVuFsN0VRP3g4mA/2Hg0YyAk8m1/PGsqO+KSFwc0vspkuLZNmdFA0loBi2Q0rxTBvoA71GDKiTGHU67abOvcy2jjWateChwRZOV2RUIMY1UTQUZl7e95+NpWcN39h10DfoqfO6kmIp7YHwnhz7FdiDL3AtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR10MB1466.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(9686003)(26005)(6512007)(316002)(2906002)(8676002)(186003)(83380400001)(66476007)(66556008)(4326008)(53546011)(6486002)(66946007)(508600001)(31696002)(38100700002)(31686004)(6506007)(8936002)(86362001)(6916009)(2616005)(36756003)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDN1Mm1JRGpwMjdlOERaOUhkRklDTGJSNE1IRVhlZHd1eFNIOUVZRkZxeVBi?=
 =?utf-8?B?UElNbWdJTzNRckpHUisxK21DYTNvZkZEbGk5ZEMwTEg3TFp0Q1llR1lVV1RB?=
 =?utf-8?B?SXNwSU1TajhRNUU0SzVjblAwWEVxVWw1NnNLQk42Z2tUeU0wUS9ackdjcGRZ?=
 =?utf-8?B?TzNqUmhqL3FUd1VoUURsK2lvNFd0MWdxaXFFNXZiUUtJUHBRaFU3dEYrcGgw?=
 =?utf-8?B?aUdpZVlVSnMweE9KT0hRR0lGS0lQOU0xMjg0UG85M2cxenI1clQyTWhYTXNp?=
 =?utf-8?B?Y3NZcUE3cmxkVmd4M0tiS3I2NmtVNmlURFVqOUxGNXJha0lXdUpoL1dFanR2?=
 =?utf-8?B?L285TmxQSUJ2NmRzRnloRE9Ta1R3VCtmekJJNWhhOThIZ1Z0WGtxaVhUSGI0?=
 =?utf-8?B?NTQybmNYcmpsdlBsNFo4RForNEpRVXdvUmxhZ1IrTyttN3MrTXQ0TEk4Z2Jp?=
 =?utf-8?B?enR2WXpxSmVmQnNRdzJxOVhmMm03QUdiSkNSUUlBL3pXREgrNnJxK2t5dHR6?=
 =?utf-8?B?eGZHY3ErbS8xR1YwSE1jZ1B3OFNBTVdaTUVVT2tSdEZ6WE5XR1NvVmxmWHI3?=
 =?utf-8?B?SFR1ZVZXcE1PdDhnYVpGalp3T1NBT3BWNjVVSXBWMFJZWW9UYXJ1eFdWaGVQ?=
 =?utf-8?B?NVYrOUNCMXdCZ0tvcElxSmRSSXUxSjRYNG9UQTVnNC9GYi9mWHV0ZExBTDlU?=
 =?utf-8?B?ZUpxajgrMndLWWprNitzb1lNVGQxSGpURGlRVlVTYi9LTEc2Z2ZTeVpDYU5O?=
 =?utf-8?B?WTRhRHQzYkx4SDQvSngyMTR3RFJuOE1kRFNEL1RTYzBsdmVaSEQzS1kxN1VL?=
 =?utf-8?B?ZjVWM0w0ZXMwTHVxMU1PekhiY2hpSjBZQk5sNzVrczhITHBHTGk1UjFGVWlW?=
 =?utf-8?B?c0RYMVl2VG1ZQWF1V0dMMEtXOE92cWE5K1ZpeTRjcTEyeHVlK0lvL1lIY1pM?=
 =?utf-8?B?Q2RKSHpMSE5CM1BoVjhYNzdxc096WXVFOHN3QktzeGg1NjhEVWxselNwUDY4?=
 =?utf-8?B?VURPSU8xMWdwUi9DYXVGeFZoTlMzTi9BTlFWaHJYbFZHSDdOdkszdHJWR3hV?=
 =?utf-8?B?SENoQmgxRVd0Rjh5bEQzOFZaRm9aamZuaE1iSUsrQ3VleWhhMnN5V0JTTHpJ?=
 =?utf-8?B?R09rV1hlbU5uWHB1a2ZtN3lnZ0FFWG91bHN6dHlEOXhrTlZoTHB2U1RkNDRK?=
 =?utf-8?B?aUxQT1lIaGNmNGpTU0tEdFh5c040ZDBma2lkQlF2dHpHNEw3ZkdPTlhEMjBE?=
 =?utf-8?B?cjAvVU92SXNabGxRSHRUYmRwTFFzTkVJZnQ4ZUtTVzJ0eGh1MG9hb3EzUWVa?=
 =?utf-8?B?M2U5NkZFeVphNmJDWFV3UXB1M2tnYUJCTy85MnRXWmdBRWN6UGw5QmVzNzE3?=
 =?utf-8?B?enFmTWdSSDZqaUtWRERZa2IyZjQ0T1RCeS9sNWtVWmpXcThWZnM0QWV4OHJG?=
 =?utf-8?B?anh5ek9mWDhmOXdvc0tSaVY3RlpCaUVLY2RJbmcxbEJrYVhSNmp4RDV3cUNa?=
 =?utf-8?B?aC9vL1NCblc2VGpVb28wMlpiK0d6cytFYlg3RU1FRGZyYUwrM1VkaXJvZ01m?=
 =?utf-8?B?Lzd4Mm84VStJTWZMczJsdHd3aTVDL2pGWVFlN1VCZzAyb05PY3hVNW5QVU5k?=
 =?utf-8?B?S1RZL2oxQUlMRXpJMmxZVStVMDhBYVdyNmJTUDl0ZXRWY2ZycTc1MUd5YlIz?=
 =?utf-8?B?QnVlbHBnOGE2YVVpUUxud3psSmJ5UzJkRWlUOHo0NDl1ZTJsWStQOG9yUFFK?=
 =?utf-8?B?UnBkYlZ1T1NPbFMvcHBjSm1HNEJTaGltSndaKzIwcWtFMXVtdkJjMHh3ZEow?=
 =?utf-8?B?dTJjZzRWeGtzNHZaSnNFN0JqUk1id2Fpek45dkF3dnU3cDVHZkZCZkpudVNE?=
 =?utf-8?B?ZDBNNzV4b0IyNUcwb2RsSllqREtjVm9pODJ6VUgwNFFXWm9BaUp0QnAxNVZG?=
 =?utf-8?B?bGRzQWhIQUE3WjlVTi9IMTJJKzljRmg4MjVQN1B2WnNkbXJEc0pDK3FkRGxZ?=
 =?utf-8?B?d1JxeWYvem41Sk5kVWpFMEJTY2VsZS9BSnpZRVFZd2YrWXdjaURiek1Felgz?=
 =?utf-8?B?VGxmSlhPYkpic0t6MnJHQ210S0s4RjRkaCsvZldtNnEzd3RJSnFMY0pNa1Fq?=
 =?utf-8?B?MTkreEF6SHJjam9pNUlFYktpWHBJVExxR3lDRjhZN25NM0VQMkhON005SDlH?=
 =?utf-8?B?VG1SY2xMcDhkakROeWcvNkdLdEd2QkU5aFN2Qkd1L3RvTi92akgyeWd0VE1D?=
 =?utf-8?B?Q3VFbDNONjMzK0ZvWDV4SlFkcHd3PT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb68dd89-d2fc-4a6d-8b96-08d9f0f2bd0a
X-MS-Exchange-CrossTenant-AuthSource: DM5PR10MB1466.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 02:19:19.5691
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBOHo5i53lal8JbJhEruAw5SoHr644Kjg3Sfjr9X77L+1YAJC6SwSLBn5ySa4EmzK23EBZpaGgJ5g9I+VEE0iXGHJZEbqaGuBrneheszFOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5322
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10259 signatures=675924
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202160009
X-Proofpoint-ORIG-GUID: LsdzpBh__-iyfHjEaMtO1w_t80xcNXO5
X-Proofpoint-GUID: LsdzpBh__-iyfHjEaMtO1w_t80xcNXO5
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=YdjAankk;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=TiZf3ACm;       arc=pass (i=1);       spf=pass (google.com: domain
 of michael.christie@oracle.com designates 205.220.165.32 as permitted sender)
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

On 2/15/22 7:28 PM, Zhengyuan Liu wrote:
> On Wed, Feb 16, 2022 at 12:31 AM Mike Christie
> <michael.christie@oracle.com> wrote:
>>
>> On 2/15/22 9:49 AM, Zhengyuan Liu wrote:
>>> Hi, all
>>>
>>> We have an online server which uses multipath + iscsi to attach storage
>>> from Storage Server. There are two NICs on the server and for each it
>>> carries about 20 iscsi sessions and for each session it includes about 50
>>>  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block devices
>>>  on the server). The problem is: once a NIC gets faulted, it will take too long
>>> (nearly 80s) for multipath to switch to another good NIC link, because it
>>> needs to block all iscsi devices over that faulted NIC firstly. The callstack is
>>>  shown below:
>>>
>>>     void iscsi_block_session(struct iscsi_cls_session *session)
>>>     {
>>>         queue_work(iscsi_eh_timer_workq, &session->block_work);
>>>     }
>>>
>>>  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
>>>   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
>>>  blk_mq_quiesce_queue()>synchronize_rcu()
>>>
>>> For all sessions and all devices, it was processed sequentially, and we have
>>> traced that for each synchronize_rcu() call it takes about 80ms, so
>>> the total cost
>>> is about 80s (80ms * 20 * 50). It's so long that the application can't
>>> tolerate and
>>> may interrupt service.
>>>
>>> So my question is that can we optimize the procedure to reduce the time cost on
>>> blocking all iscsi devices?  I'm not sure if it is a good idea to increase the
>>> workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
>>
>> We need a patch, so the unblock call waits/cancels/flushes the block call or
>> they could be running in parallel.
>>
>> I'll send a patchset later today so you can test it.
> 
> I'm glad to test once you push the patchset.
> 
> Thank you, Mike.

I forgot I did this recently :)

commit 7ce9fc5ecde0d8bd64c29baee6c5e3ce7074ec9a
Author: Mike Christie <michael.christie@oracle.com>
Date:   Tue May 25 13:18:09 2021 -0500

    scsi: iscsi: Flush block work before unblock
    
    We set the max_active iSCSI EH works to 1, so all work is going to execute
    in order by default. However, userspace can now override this in sysfs. If
    max_active > 1, we can end up with the block_work on CPU1 and
    iscsi_unblock_session running the unblock_work on CPU2 and the session and
    target/device state will end up out of sync with each other.
    
    This adds a flush of the block_work in iscsi_unblock_session.


It was merged in 5.14.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/be26ef80-c3cf-713d-2a9f-4fb73cec7e17%40oracle.com.
