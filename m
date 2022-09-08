Return-Path: <open-iscsi+bncBDH7XCOC4UIRBAHG5CMAMGQE2DQYP4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB265B258F
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Sep 2022 20:22:59 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a19-20020aa780d3000000b0052bccd363f8sf9757002pfn.22
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Sep 2022 11:22:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662661378; cv=pass;
        d=google.com; s=arc-20160816;
        b=hdJW1x7u1Hon32F+JmGf5siwbFjTL1HWBzguIDr3/U8oJCotgDowhK3RZ8m3D20/+J
         yB0eOU93UkTAaK+PhR3hePIXEoVc/WQIikPeFNodNx+T9GiU8Y3hHeCxRCDOxIFiGej1
         oJlz7A7MA2CCxk234RnjfYirg4dzbf2xeL3WB8Osri93h6xNRZ8+hfvwgmJnSb6h7if8
         EnivkzUAfiPM9qbiuMh2NKlf5rgTn2ZR085abj/Suh1hdMhMzYWZRZuYfWFTbKOMUd+k
         45bfLOW11ZTmkCewp5f+SeBzHiev0tjDoPFiLrl6jkIuBY2kggf+CzJb0WptXC/dK9+m
         v/XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NC0H5upewtab9alrSzzIZ6qKjvA6nrK5I8hOaBCLWcg=;
        b=cbLIXzkHvh5QfEVtENfIdc8BQO+0B8iFT9kbp4K1PHWFD5xqecFhfisYuM5y2tVK+T
         sTLyhznMq+8JkYxmRmL3aN103C9tTcOYBTrKplmGvCnWepQnG33hHLoZsNGFtKEF2qf6
         t7OpuBn8RFLnChXMWX9qjGYDGgBpQpI7thj3unSebroTaeKuawydvGrFjdCrRxnRn/pi
         m/9eX0u5ekdPbU3j2pn3UGnNEBCN2NnLqYlTyqIVvXwEVOxsevhRjORqIqC/B/Q+dfca
         MNDUGBDBceg0dB+2HqBkcmZe80rkr+gRTaRKVcttNuLOmT+i1j5fbwdD8lACQ6kxHyyW
         dfWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=S0jOhO51;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date;
        bh=NC0H5upewtab9alrSzzIZ6qKjvA6nrK5I8hOaBCLWcg=;
        b=JIPn9aw/Q3Ot4AClWe1545oa2ivv8n/FJSukjVTeX5NXpuaqYZY8NUsvFtdfjN83de
         p48B5mQV+76tqiD5VmpkShCQgsa7sTm27YpBLrAWVVUHFSDUBR59KFVmHjuiORDQMQG0
         GTwhR4sKPPCIQVsg2rqcznSGQLcr8PhnYIkAw7gQ8s/bzNTNuc8uiel6DxOc/WroyqIi
         PJy0S18+QYRm87jckeCB3H/JnDaf/KeeK4VZMcTHSdja957hghvPDeHeUSzaTCcG2mBw
         7LorCyq3dZ+7PoaQTn+Bt2b5vpxrXJ1La6oJbMngz+CKzG7Y/UL8DP2ZfqwTdITvIiJj
         tsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NC0H5upewtab9alrSzzIZ6qKjvA6nrK5I8hOaBCLWcg=;
        b=ge+WrLhxu12TmUxGIKVJefXj00J4gJV+dfg3ToUK2qR6PdWWXFVUlLTzDiwNj9n6J8
         j2cuiGMd7C571YjIAMjrePaf3s3xZc4sdXEWvEry64qDtwer+8i9AYGDzd0qJS+9r/IZ
         HFbmdT/qT+xkKa663xE2XJkBppUbTYOtFC918Gf/31s2eP3EX9cTbiBK5dgMIOZB1CBM
         uHweZvw2Lgvce3TpXm2uyWWQEUTXFzulaQnSIaNXsXanbDdDfNTMlAZh8hDajSVeT8UQ
         LNFOpXnLfD2EVj24J3DvBhNfE8XjbUq+b8yb+NPf2aPdsOhCgZwumbM4OERukd7kvl7a
         lKFw==
X-Gm-Message-State: ACgBeo34Io5W0yesj1iWMXdFp4s7CY0Qhq7xL7MASgNnRIovACq1zWuK
	h0zk53WmwpLHPO3PloCagRk=
X-Google-Smtp-Source: AA6agR6cL/DQw6NIQxmPnVadeyV13gmrYS2xusagNKCv8VWe4E2+UqZEmewbMR0MYr5AJhpbiIDyKg==
X-Received: by 2002:a05:6a00:1594:b0:537:b6ab:2dd5 with SMTP id u20-20020a056a00159400b00537b6ab2dd5mr10076227pfk.51.1662661377998;
        Thu, 08 Sep 2022 11:22:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:ce84:b0:16d:4224:4877 with SMTP id
 f4-20020a170902ce8400b0016d42244877ls1759595plg.4.-pod-prod-gmail; Thu, 08
 Sep 2022 11:22:55 -0700 (PDT)
X-Received: by 2002:a17:902:d2c2:b0:177:ed66:798 with SMTP id n2-20020a170902d2c200b00177ed660798mr5997080plc.76.1662661375584;
        Thu, 08 Sep 2022 11:22:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662661375; cv=none;
        d=google.com; s=arc-20160816;
        b=wK8kEoiKPKbiergd258ozJYhWtGRkwKafcj0HVUXqSXnRXB3rAWlo0wHiTP/57ljeS
         PvnJ0KX835pUSA3yFeJoqtGKZcX47MlpFmymFJb1pGjdLeWvXiQTqagJrt3nEqtxxLaU
         38aAlMRivqcPgw6y2pTqFEVGU3leI2PMJ7AOoeuUSfNJ99poaplPIumRaj64x0vk3uaa
         umcouLqVYE7XF6xc4JYau6vublsXRMqjl/X9eXjpxeeVS5ruiajgOlQEanlEZvXGAgoU
         H3d9ynYwMq8joBfTuM/jK1jIbJeXnBgAf9cO5DPDyHMUmfegc+8SL6P0+j5cMOV9s9Mc
         d8UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e9PURg3v6Mn4BSDl/sTo3UWJeLEfm6dDnEzXvqBuSWc=;
        b=cyICd0BHUcPHeT8bgabf9W5jWzXMrU9WaI9gH1Al6MPlyuwr+Nxunrei02LQcUJvcm
         qxZTKbHisTfhQpQuInSLGEJHZvoxanv1pp7Ob4vpt3wklIxxsr0GPNs9dQ8rF2bnPlMv
         GPR2VW/aP9jU3EVyR16FR3T1315BsYjCACQOqvu2zB2/ORsmIpuB6hvTRpL2wSW5q9MD
         4tYcV6TQeDbzXF0CI4cYLTqWeJwbBDsLIryfrjEjJZbNFl0slwgoHSg8OBL2yYsvzvoJ
         YzBD9sKgS9pebmGRHP0jSGQZ7V+698oEMSxiPbum7JEeTBg8eXO9SRQpaxrxhVi+vwE7
         nBhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=S0jOhO51;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id w23-20020a17090a529700b002025f077b2csi101486pjh.1.2022.09.08.11.22.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 11:22:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id e68so5725934pfe.1
        for <open-iscsi@googlegroups.com>; Thu, 08 Sep 2022 11:22:55 -0700 (PDT)
X-Received: by 2002:a63:1a53:0:b0:41f:5298:9b5f with SMTP id a19-20020a631a53000000b0041f52989b5fmr8716805pgm.244.1662661375238;
        Thu, 08 Sep 2022 11:22:55 -0700 (PDT)
Received: from dev-ushankar.dev.purestorage.com ([2620:125:9007:640:7:70:36:0])
        by smtp.gmail.com with ESMTPSA id y1-20020a17090264c100b00172b87d97cbsm6910036pli.67.2022.09.08.11.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 11:22:54 -0700 (PDT)
Date: Thu, 8 Sep 2022 12:22:52 -0600
From: "'Uday Shankar' via open-iscsi" <open-iscsi@googlegroups.com>
To: michael.christie@oracle.com
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Message-ID: <20220908182252.GA3378789@dev-ushankar.dev.purestorage.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
 <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
 <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
 <644defe5-2a33-9eda-ff7f-f600e635a48b@oracle.com>
 <20220829215122.GA546808@dev-ushankar.dev.purestorage.com>
 <9c5a4232-5933-35c7-ac5d-745138de49a9@oracle.com>
 <e5f7ba9f-8268-c0bd-7a60-f702157ab6a7@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e5f7ba9f-8268-c0bd-7a60-f702157ab6a7@oracle.com>
X-Original-Sender: ushankar@purestorage.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@purestorage.com header.s=google header.b=S0jOhO51;       spf=pass
 (google.com: domain of ushankar@purestorage.com designates
 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
X-Original-From: Uday Shankar <ushankar@purestorage.com>
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

> Or, is there other ways to hit this that you are seeing? If there are
> then forget what I wrote in the last mail :)

No, I don't know of another way to hit this organically. With the change
you suggested, if someone sets a scsi device to the "running" state
concurrently with the kernel onlining devices (kicked off by iscsid),
it's possible that the kernel will observe the current state of the
device as SDEV_RUNNING in scsi_internal_device_unblock_nowait. That
function will then return -EINVAL and the device queue will remain
quiesced. AFAIK there's no way to recover from this situation without a
reboot. (This is actually the bug as I encountered it first, in Redhat
kernel 4.18.0-348.20.1). This is not a great situation, but maybe it can
be argued that if you're fiddling with things in sysfs you should really
know what you're doing, and avoid doing stuff like this.

I did write up the change you suggested though, and a couple of
questions before I mail it here and to linux-scsi:
- Can I credit you as "Suggested-by" ?
- Currently I only have the new capability in TCP's iscsi_transport
  struct, because that's the one I care about. But I think it should go
  everywhere?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220908182252.GA3378789%40dev-ushankar.dev.purestorage.com.
