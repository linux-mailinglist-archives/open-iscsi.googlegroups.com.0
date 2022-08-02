Return-Path: <open-iscsi+bncBAABB5MSWCLQMGQECEFQSRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D0958A01F
	for <lists+open-iscsi@lfdr.de>; Thu,  4 Aug 2022 20:01:28 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id c9-20020a056808138900b00342a07994e0sf100182oiw.1
        for <lists+open-iscsi@lfdr.de>; Thu, 04 Aug 2022 11:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1659636087; cv=pass;
        d=google.com; s=arc-20160816;
        b=WRCzI7mjK/eaUrTwdLrdcMgn0+ixz4e5jN38f0OD43EzXCHLTLpMgGx4THtHayku7e
         eygl5Ln7HZZ77LPu2OuTBnJJKK+JwvQaidqCCiF+OpyQF9di+VlYLGYWHw5hOxm7v7OA
         wA1FlzmXLeQ80fH7oa2Od7jSi3UjMDGTkkpD9tpNHtFqWCZcWxjtKNpCWQkGkKHASaPa
         AwWh9p9BiAaDWb/z09Qyhr79r4bcmvIu9ibZcmt4GyP1STxt+eYCkVSt37uV41uZCW49
         6wu8Z5M7CGFSBUvLxrufeKTyTcDX52cQ1FZIoaAgR3Y8ygXRcQ4ENsEtoN5F8RE5OCVM
         zUfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=dgTYBdyeK5Gz6vXzpHXjYQ6xWbjroDmEqKPS6c80CCw=;
        b=Y2MMqL9BgHzPsYuRYKNgloqOUsYEgih+C0tUSMzSOV6OggNA+HIBUjQMj5ECy6FbFz
         wA7VUZxOUw7HfUxzGwhCpxK5fCMpODOwK00szVhuAY55PzD3EBELlLgSrnH88Cn/bWjH
         xylYcmxaKIslO1GjAKEaO75vh8UeMx8MxqgtLusOPaWqdj41i0cea6GtDhOiBW55kjCV
         Iz7Um/krGrLY1rAxKtV7q6fcSBUbMfr62hTOvdOPF8z36e4LvQbVg62T0qJIBjYfYan9
         RxuRLQLkefMv1DtkR+AmRWPu94ezqBlT2WQ8J+a2Y4iDiGljJOPyk8+F3wUxlQv/zcg5
         4Dow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lijinlin3@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc;
        bh=dgTYBdyeK5Gz6vXzpHXjYQ6xWbjroDmEqKPS6c80CCw=;
        b=AOddgZEUZRyYvdurQ/lHZbten13yf/dBJ3hnxWyiIpPk54hkyvZIPKVYKqw+Mhia1C
         ikZBUcZZYifRvRCPijqkhnZXsZkFkh31DVAoQ+U5SS/3wkBlJbtRoInYYZPjRESkgedJ
         9iwNv43QDrNi5+1bV10G6yjMvpmQ7cj457pQvUuio1Iu23FqLs3V2ySPG+26IGqZgwq6
         p55l0JkMIbhnepo9kpTHc16Mk8Z2uhTs/GYeiCb8ipNynkClfLykdvbwOLjKVhP++p1Y
         xrZ1DpzG42IUJG19J584QzL4+IkF0aYhwg6AOpdsvjHdBA2mLc5WOs+WRmmWaHQeAK+D
         H7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=dgTYBdyeK5Gz6vXzpHXjYQ6xWbjroDmEqKPS6c80CCw=;
        b=1vInNTuB8zf3w9D2tSyAXw0Yka64KWZXfrfW28BVwrh/t8K8ZCtgCtYdjXKKmaqWaC
         ilXc1EJIIw3+yrAh08RT7TLzanDuqmnoepirEj1r6J2KKhZ8cKhbVltmGd8qftl0uDXL
         TgzW/syUNSjpT5YMpThipVvPJr5BvQuIhj5+zQj+6aQyuKzeckKFbfYtRI33zXrDHWvI
         lUsQtLxc4JQakcDFUEttnhgumVH8GmRLVGeBLw5Eox049tsSvPL3hnAb2pR6px8fOsiD
         pWb9mATsQ5pImkNyHSL0jCfgPsPyDsN6nyfnTQEaliG6guLhzqyrjHYlemwtkdYQYAK7
         asAg==
X-Gm-Message-State: ACgBeo3I3cHKeJg8+iRB77izpoHJOf9f67g+GDuz/wfsVY2FkfzGcYve
	oCmlZZw4e0NRiloucg9fSBo=
X-Google-Smtp-Source: AA6agR6NhA5dTJx92fUvL/AejOFsiBHnXh82rZSejwUlNmPo1fLmXsrsENgYaZMer97BhkjQ0+lYXw==
X-Received: by 2002:a05:6870:33a7:b0:f6:dd:902 with SMTP id w39-20020a05687033a700b000f600dd0902mr4666347oae.104.1659636087031;
        Thu, 04 Aug 2022 11:01:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1199:b0:61c:57b8:3c9c with SMTP id
 u25-20020a056830119900b0061c57b83c9cls500523otq.8.-pod-prod-gmail; Thu, 04
 Aug 2022 11:01:25 -0700 (PDT)
X-Received: by 2002:a05:6830:1b68:b0:61d:2520:59dd with SMTP id d8-20020a0568301b6800b0061d252059ddmr1158720ote.217.1659636085703;
        Thu, 04 Aug 2022 11:01:25 -0700 (PDT)
Received: by 2002:aca:40c6:0:b0:32b:fe3:9955 with SMTP id 5614622812f47-33b27d35dcdmsb6e;
        Tue, 2 Aug 2022 04:23:40 -0700 (PDT)
X-Received: by 2002:a05:6808:1d4:b0:33a:782f:b3ad with SMTP id x20-20020a05680801d400b0033a782fb3admr7812349oic.161.1659439419812;
        Tue, 02 Aug 2022 04:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1659439419; cv=none;
        d=google.com; s=arc-20160816;
        b=kYLNa/bl6iJxrQl6GoxAX4aZl0Lp/l7e39j15s+ej3Gsg7tC9Y1mWU+TgP0q+c8PVu
         EpVQoCLNztRrqupErNTG8YV2QsM+IUB6+vRzOHaoCRzhp0diOCGhBlYKYp5qV76OuXxF
         Z05+tAwfPMt+8cep6wjtNutURNz6tSvSNYr+LPu+G2Iv+0hdE2gjda2tFS8nRyV5VwY/
         +fDWZ+tCT4xlqpNILgssfvnV5kOcxx9zIEqXeFaXkYe42k7i07mFb6Blb85iuaEaYov8
         O1ITa6XY0E24NTMtXisrKNOA9nF1F2UeXvkGr+1kcQOZI6mz4pwAqC9uRavf3GZm2c22
         A4IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=VpKhBNw7EdXpyAIY//ydLjTRdKqljRSYlCteNuk6bzs=;
        b=CiUJeUg1H1iiezzDBFnFCrP90Sk6g0TChOuH23fqPTE4ckehYZx/IDYIONqg4nDGuj
         Ius4FwZAaEpdN/cL7oxlf90LTrSIM13NDVasEzIKx1v7X8e2l4SLFXo+WUUDc4GMKcD5
         gX34Y7nRA5T2d/u4tg+ao7QoZb/39XPB0x30tfOjqjiN4TjPwlSjgToZfVEAg15tObYv
         Dx0mayAp1foS/gTMcFLZQ/XDnnKBeoHBY//SPVLWqczftel035Ql2R+ha+PgHvf9qjID
         toLDXY3t+ZlRBfbbuwud+izelyuk3oFPoDt7nGpGhqL2DJS5lBbuibiks0Hoqn/kffWa
         /Wlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lijinlin3@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id t5-20020a056870600500b00108c292109esi1031378oaa.2.2022.08.02.04.23.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Aug 2022 04:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lijinlin3@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi100016.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Lxsvs5jP5zWfFn;
	Tue,  2 Aug 2022 19:19:37 +0800 (CST)
Received: from canpemm500008.china.huawei.com (7.192.105.151) by
 kwepemi100016.china.huawei.com (7.221.188.123) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 2 Aug 2022 19:23:36 +0800
Received: from canpemm500008.china.huawei.com ([7.192.105.151]) by
 canpemm500008.china.huawei.com ([7.192.105.151]) with mapi id 15.01.2375.024;
 Tue, 2 Aug 2022 19:23:36 +0800
From: "'lijinlin (A)' via open-iscsi" <open-iscsi@googlegroups.com>
To: "lduncan@suse.com" <lduncan@suse.com>, "cleech@redhat.com"
	<cleech@redhat.com>, "michael.christie@oracle.com"
	<michael.christie@oracle.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
	"martin.petersen@oracle.com" <martin.petersen@oracle.com>,
	"mark.mielke@gmail.com" <mark.mielke@gmail.com>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linfeilong
	<linfeilong@huawei.com>, "liuzhiqiang (I)" <liuzhiqiang26@huawei.com>
Subject: RE: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
Thread-Topic: [PATCH] scsi: iscsi: iscsi_tcp: Fix null-ptr-deref while calling
 getpeername()
Thread-Index: AQHYplPSHTFXshUY502LyLNPnnKlQa2bdgFg
Date: Tue, 2 Aug 2022 11:23:36 +0000
Message-ID: <d8afc88468ab481eb325e842ad384e0e@huawei.com>
References: <20220802101939.3972556-1-lijinlin3@huawei.com>
In-Reply-To: <20220802101939.3972556-1-lijinlin3@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.174.179.2]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: lijinlin3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lijinlin3@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=lijinlin3@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: "lijinlin (A)" <lijinlin3@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

So sorry, this patch has problem, please ignore.

Thanks
Li Jinlin

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d8afc88468ab481eb325e842ad384e0e%40huawei.com.
