Return-Path: <open-iscsi+bncBD54HHNYIIIMPU5354CRUBD5LR6HK@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8CB117C8C
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 01:41:44 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id a20sf8710916otl.11
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2019 16:41:44 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1575938503; cv=pass;
        d=google.com; s=arc-20160816;
        b=guOrJacYDRYH8SzF4D3C15kvYNEdNRmqyAfTdkA4i7C7WHwLDL2Q/IYaZJcIhH8YaN
         jH+6OQw+EHJt0uO401TG5qr5YtTP6C78dggrK+svWRAASli033RpW5NKvHiGIPk5yVQl
         TyWFLNRiPipQ5w8YJaMXcP5AdQXwYE1ChjBPbLqCSv/huqXvYwbKFyWAkN9bbl4Qb+JS
         pSerd90rxmyaXLy43R5JrmHXInqhw9bDPYuU+fRawL1a8xn9J51kSz8jXJfvuOnbRot8
         98e/b5C8yTmeeM7pT+YBSpixFadc1yYxjL0IXqP1XXMcBCsLto5qiTuwLkP3IMR+Ht6x
         s2DA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=xBO5FJoQoJJr1ryWNiNVzq07TOjC3THcwvpouMY4xcI=;
        b=d+XlTfRVr4yDY7GRaevOoG189ZQ+UUqBGiF+yGetAgrNHGZpuyPLjBu0/XKCWQ9WTH
         k/26LxnlubX62huLeGU8sQ/OJENTlTn01bewLZltvMLgvJpGEyDyuHhyousL12zhWmEr
         aV8t9DDmDNUx6f7SOch33KG07IGtt/TDVhfmCQlTYqjX7UNDtSY8xQQVNA3gEWhEUiPA
         57RQNsMWLEFgmcAW3WjKXK+VZsoH24G27ZuaOsL1VZ3D+Gmg4tuJ8B7ZEEey2b1jrh+C
         r3qpP5MAvaQ2TUforskk6ctwxXC9VRhPAiDALv/UI49eSF8tfk4/A5rJQO3srv8PJb/C
         0XSw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xBO5FJoQoJJr1ryWNiNVzq07TOjC3THcwvpouMY4xcI=;
        b=kYmh2KacEzPrluVI9FvldyuMf/7ZE37LGWFKV6INAW+a9Mh3FonCvL2oICHIo1O5wh
         auu8bduWpSrNV2C1ttTIs+uKg/XWQDXBYEk6jNyV5CjgStUIN0AbJleu2CvvxROMqXGZ
         ScvhevBVhtNS9A2k+Cs6dwhkjddroOmn37S9KbOa1+EsjvdE3AWUTrecMAh5IIIx5H+m
         dBnpIlmXUgiwLgfIWUFEuoXEg/nOP5sMtNMn+lTtVzB5IBwWnAY5aw57RMttMVPW7wqD
         78Y/5674i7sepowM6QajmgKzK4EqOZCA1sgvkEXRWEcySBfeymU/9pi2pbNw9oaaJqne
         Qb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBO5FJoQoJJr1ryWNiNVzq07TOjC3THcwvpouMY4xcI=;
        b=SYtx1DE7ImUMItPDMnwKCQZ/BY2t23PVJmI8oUpDU7OjHd5x01eS7zOJLji7b61hCt
         qXP2D3JakqStyhUt3LQ7ayIUhNaGfvjXTNIX1wQPkMpXvS/mhDDddxGIkfYAw87LKXQL
         GKKmA+myHfZ6bLsz3iWwnqm8WI0mtxZSaXVr/wTfW4+qmfAHFwpNhzijPZrfUCMIpbPa
         6IYg6dp6S8UeOvQHfFbSBVB5DkC9pzhuKMo8zz43SkQTYbR/6TgVIEIl+MzA7mi3b9Lh
         dRwUennrdOud91z8yN6F0nhHSsRt+svvSTTX3MJh/MuTD97ZywxbyFnkbVS2IzN5kS20
         EQAw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUxtm7PnVaYmmn4vXH22MBb1dAcyQrYX73YdaqeBgx3lKWFQaHq
	un4olA1VaUTSzoOrV1ZLM0s=
X-Google-Smtp-Source: APXvYqy214kkZ5lAj2ITX+9/WsuxEbl3LjV+YkVAyS49lL3/+l0G0WoganBgs9NMDkHyReFPLBJWHg==
X-Received: by 2002:aca:c492:: with SMTP id u140mr1758727oif.80.1575938503213;
        Mon, 09 Dec 2019 16:41:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:cf95:: with SMTP id f143ls1212811oig.7.gmail; Mon, 09
 Dec 2019 16:41:42 -0800 (PST)
X-Received: by 2002:aca:ef44:: with SMTP id n65mr1736124oih.175.1575938502771;
        Mon, 09 Dec 2019 16:41:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575938502; cv=pass;
        d=google.com; s=arc-20160816;
        b=QaWaZv2ku+fMBMTNm8hu3ZmIch9o5VKVcAmpWuxUrdNDDukrgxDBui0UZ49RkFKrsd
         k+XF+cCF3LUDMqRrvaqrtcHo6d6ApJeEHmf7yDXvl2RGAmkRRP+HeG8GOFaeOgtHUsK8
         +wommAFYLbgU7HhqsPQM+NfVKw3wQMqCz4znKIU7nN8nwTyzHW+p53oE47r4NR35uvMs
         SOm9N3UUzAlVXnVhCpWp3m0U/Y0Zv/hVjQhBrFzsaoZJk/hwFVSVI75otZNCelt7Asda
         t9xcO1udNSWuQkzRKV9KzGmR0q7r9HkRN2FShvvYybr8KnkK1oner8BjAixmhS5Hk8G3
         QeMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=3JkmIX0eT3p5i36JKeg4dlZv6fDIPdEBsLcLBlp/m4A=;
        b=CF+aW8Ud/Z9dI1isTrLrNZn00fyntzNsve8364rbNIRJTZVstRU7MPceqFAmLlHVzm
         1QWRO3rnVCZfFX6XXTpU8SGEO+PWK1OdQOZtlEgFCjQN9HOrnkyWPtknBu5lNL3VTAEL
         K/JbF5dt5gZj/ayQhnqgUn2b/EJ2eX58jhsU6Ea5AHm6Q1bEXy2AUzCzDpcw7PoFEVsQ
         1yiOseMZCsr8v3XLpAb8V9P+9SDhTjz0t2vOQUM8Ks3lW45nCcjFfnGp7IDscVtUWS+t
         woeW3LmgFOOXtvA08I+33Stw7WXPXoTLiPlb3KHhTvDAwnVcEu6AnkXHi8/ffXgcSsQ+
         R1kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass fromdomain=suse.com);
       spf=pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
Received: from m9a0002g.houston.softwaregrp.com (m9a0002g.houston.softwaregrp.com. [15.124.64.67])
        by gmr-mx.google.com with ESMTPS id l1si60900otn.1.2019.12.09.16.41.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 16:41:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.com designates 15.124.64.67 as permitted sender) client-ip=15.124.64.67;
Received: FROM m9a0002g.houston.softwaregrp.com (15.121.0.191) BY m9a0002g.houston.softwaregrp.com WITH ESMTP;
 Tue, 10 Dec 2019 00:40:57 +0000
Received: from M9W0068.microfocus.com (2002:f79:bf::f79:bf) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Tue, 10 Dec 2019 00:41:02 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.124.72.10) by
 M9W0068.microfocus.com (15.121.0.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Tue, 10 Dec 2019 00:41:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bm/7LS9SEbkH7EHmsQ+nVURfibbWaNVkWzuMcFEYIZT+iylxvNRXFU9fZA2v1axuCxdi8RoOiHSi/2OSvheVoiXKHUZwlIKqzR18NjW7UZfvQdtO4rb73gx0uhNbH3bGGL/WTGFpma40gFiu8jlYw9akmFgKQI57Xd/M74E/T6Fa8MxI4TISjRrjbTR1F6U04cVJn7JMBOGTMgZ67qyEMxZiQPdCwExiLv10pqzVHl85Igl+V/Yq3sJFpuxduOxbQoe/vOWJQViZplS3lYnERDFI3uhFyMNxorLlYz9zdyQj9y56JOpvyNyISy4AK/dE6fTHslnVkVxnl9KElDaMdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3JkmIX0eT3p5i36JKeg4dlZv6fDIPdEBsLcLBlp/m4A=;
 b=PiQ1wzG3A44RtOgmCgKCLYLUDeC1LzPEcNdbaqbYiRQkQxfEiWcFukeTe6o3vGRLzZCoKp7tj4fW8PPsYae3o02AwUCbTRcEtI71Clk+rfK44OXNUkwzW2tsntxT2wcpdDCJ9e2tIUU9sVg3bWDfrlcCj3QpPyKEbS/GnA02BZEQoFTCnDutt68UPgE5d7WPhta0Bhagqp+RaVcqlZhi89tQLaT+5GjMFTubbX3rM3671M0eMQBViGoglMk0oglwv/Z/Cq/cHdhJQyUMaRzc08M2QPGpND3Q6Byq+zYP7LAHzVfMECFPBhBkKX3Qs+00euqIg6hj5C+TBFLBv8vI6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from MN2PR18MB3278.namprd18.prod.outlook.com (10.255.237.204) by
 MN2PR18MB3373.namprd18.prod.outlook.com (10.255.238.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Tue, 10 Dec 2019 00:41:00 +0000
Received: from MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45]) by MN2PR18MB3278.namprd18.prod.outlook.com
 ([fe80::2914:6699:d7e5:de45%3]) with mapi id 15.20.2516.018; Tue, 10 Dec 2019
 00:41:00 +0000
From: Lee Duncan <LDuncan@suse.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, "wubo (T)"
	<wubo40@huawei.com>
CC: "cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>, Mingfangsen <mingfangsen@huawei.com>,
	"liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
Subject: Re: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
Thread-Topic: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
Thread-Index: AdWfpPEqf8P620ByTC6DVQFqYQ7mDQPQViMDAAMLyIA=
Date: Tue, 10 Dec 2019 00:40:59 +0000
Message-ID: <ccda52ac-2ea7-b0d2-e36e-08f162569c7c@suse.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
 <yq1o8whqem3.fsf@oracle.com>
In-Reply-To: <yq1o8whqem3.fsf@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0143.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::35) To MN2PR18MB3278.namprd18.prod.outlook.com
 (2603:10b6:208:168::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [73.25.22.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be5bc122-a890-4a7a-2a99-08d77d09a07a
x-ms-traffictypediagnostic: MN2PR18MB3373:
x-microsoft-antispam-prvs: <MN2PR18MB33731FB6B54041EB5A43C046DA5B0@MN2PR18MB3373.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(4636009)(39860400002)(366004)(136003)(346002)(376002)(396003)(189003)(199004)(229853002)(66446008)(7416002)(305945005)(2906002)(8936002)(6512007)(31686004)(81156014)(81166006)(31696002)(6486002)(316002)(86362001)(36756003)(478600001)(5660300002)(52116002)(110136005)(186003)(6506007)(26005)(53546011)(8676002)(4744005)(54906003)(2616005)(4326008)(66556008)(66476007)(66946007)(64756008)(71200400001)(71190400001);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR18MB3373;H:MN2PR18MB3278.namprd18.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fRv+c/4uEgmOLOYZ8QmSSoBlxiCkj372ITurHbc2hEJ0aol5nGBjS8xssHi/QOS4q9n/H79XCCieMnI5N4DMCJjM2uDovqlmKCn019GN/EXJeb9EXNUbGCXgFu1TrZnIRqQncr00Uh+ocFB5NKvZGmx6TMYhDZ/31zE3zpQ6lf4sxKOvNI4PNfwPXxakqwsu0WjhA97sbRpboXUEro6oG7fuDab3dwY9MlmaUvcJ1/cQg8CNEP5PgsCImGB9UaIC65RLDEJ7G6OMsrzMNI+zpYPfv/01kOU4eP+oCNvBy2D6Emq27CpwRr1UAkmYquRZNwj4AD3bNRgWic1S8e2PhFHTcJipXfNJAFs+jQmWrutalz6OACQb/EeKu6Dy9SdaNdSml6/ropbW/pt5xXfNECgsHyRH7FjSOIZf+9ilRlW7LgUikCkeS5r6jXZnLMPa
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <08200F04F75D0842901DEE5CE1591F33@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: be5bc122-a890-4a7a-2a99-08d77d09a07a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2019 00:40:59.9531
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c0CUQFHNwptYcEuzmiYnO2F3MZCFw33tFqTgave541V14mt1lisM5rAoz4AMoHE+aXCT8IOzEXihypsTT72L+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3373
X-OriginatorOrg: suse.com
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=suse.com dkim=pass dkdomain=suse.com dmarc=pass
 fromdomain=suse.com);       spf=pass (google.com: domain of lduncan@suse.com
 designates 15.124.64.67 as permitted sender) smtp.mailfrom=LDuncan@suse.com
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

On 12/9/19 3:11 PM, Martin K. Petersen wrote:
> 
> wubo,
> 
>> In iscsi_if_rx func, after receiving one request through
>> iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to
>> reply the request in do-loop.  If the return of iscsi_if_send_reply
>> func return -EAGAIN all the time, one deadlock will occur.
>>
>> For example, a client only send msg without calling recvmsg func, then
>> it will result in the watchdog soft lockup.  The details are given as
>> follows,
> 
>> Signed-off-by: Bo Wu <wubo40@huawei.com>
>> Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
>> Reviewed-by: Lee Duncan <LDuncan@suse.com>
> 
> I haven't seen a Reviewed-by: from Lee on this patch.
> 

Martin:

My sincere apologies. I told wubo I had already reviewed the patch, so
he didn't need another Reviewed-by from me. I see I was wrong.

Please consider my:

Reviewed-by: Lee Duncan <lduncan@suse.com>

in the patch to be re-verified.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/ccda52ac-2ea7-b0d2-e36e-08f162569c7c%40suse.com.
