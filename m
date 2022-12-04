Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBV5UWKOAMGQEBPCBDZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B228641D26
	for <lists+open-iscsi@lfdr.de>; Sun,  4 Dec 2022 14:02:20 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id w21-20020a05651c119500b002797c24427asf2046957ljo.4
        for <lists+open-iscsi@lfdr.de>; Sun, 04 Dec 2022 05:02:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670158938; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qv6z8PQcCrFlbBMJQzzw1cP3P6kEZvKy2CS8PWCxWhVfbjRCumhV8yHllfFuPvVbHX
         pI75Ca5BXtCmqAkWQJjLns7+tVP4Q6N0zgLscwX5PBGQ6ksSdljqqqNlwHCJqYCesba/
         oUjl1oI/yA9dZuHaVu/691QaVYQaoQPHp7G0JcdoQFAAvHhsacUT6NOZ/V+hhAsWz7mZ
         Z2fujenWF3mAqy4116kh+B+ci1IEjqtfltk7MozVYDO7JORTp9vYw4eIIMVcT0b0rqli
         qxNjSSshJuPEqab09cDLpEYNUjbHjbKeeLD6mD38nloj3GHvXUn7+jwKkNJ52eEcPjLq
         s/4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cNas84kNvY0kMseNvMqaSH2KkqrpkJsp16psXDZnuFA=;
        b=ou3PqEIbaqgDsF8Lsq9TBc6Vxw39pKRNtKbmmRXr5rp3coRerIQ3Rkh0soclDkgZmx
         /CHEA7XzWSmdsZ1jZ1+VapoIImS8Kn8uqr+uV1J4AS15/hhIXN+WRgUrWI/7QKt1mS7R
         h/oEIc/zU+k4YcRrTZP+fpVDF+N/F6GHATDw+0eoimsmiHu08sjNgTZm4T9TUOscxplm
         8HsrGh1u5xbkn7eXcCUn0gpgCP8IifaLkwo0ujwX+hNbD3Nj3yty+k/VyLRM+1ZviMcY
         LI6y5vveLm5wiG7MjKvz0IQPLc8VHoE5USYHk1G3j9x1TQ6erqtlgVhxVcP+JUkgEc1e
         qodw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=hEbnUPEN;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cNas84kNvY0kMseNvMqaSH2KkqrpkJsp16psXDZnuFA=;
        b=EO7/XhnoFwNSy+OGXCG9AEcBy0fyLdzMybvfgql2rTcXG0zPFTlCSaCu/PNRzYu1I0
         rmsPfnoAMhcXIPN4iPUZY7Zg1Bgkcd2TYpGDqKpI5ViuR4Fbzy0YjGDRMHPaJ07yfJl+
         UQNmhmj/XZyF3igQg+xlg4rgQwGvX1uFI5QsTeGVDu78lcahGIVZgoIII0Azx/sHh8iz
         B4JHL3xyHe6SkToprMZZ6ihlM9moFHGQlKkoJr+v0iun2TQWvqiOgDkocOMiN6S6QAoR
         7YIynTEvcjS/1h9HFmaNyccsgwasDoK+Vszz+iVHmPHCguRXQSX+rgs1SpkKYMR7njhm
         Px+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNas84kNvY0kMseNvMqaSH2KkqrpkJsp16psXDZnuFA=;
        b=mlLjXnqHWSkkTtkzU73go5asnayFm18gUJb6mLfR4S9MibJak0J8D/25aCBnGwNzgV
         qdL1advdIGuf8VWRPKr8Msek+HtMZOmKHXitlM2JOBB89d3wSyjwPArWZqbYstQFpf9r
         hWXj5PRfJvFx7npuhY8HqhNRD9luzIGPedR4JPoeyqP5IxhaMmYO8Uz7ATF0Km7c0wrg
         GhmxsSuwQcSWNHID30IQSIuniF1749m1BFGKcXG54Ub/McgWtMF3w5TSNGu8X3dWqDMs
         zSs0spT5NIJMXzaB8/8SpIPTf3Mh9GXUQll3uGE6d7O9KORV/dksEY1xtDrTQEVKagOc
         Z1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cNas84kNvY0kMseNvMqaSH2KkqrpkJsp16psXDZnuFA=;
        b=jL9m/AUa7ZGuyEOrgZSh8hG3Ef7oV+mGTjuFB0wiYKiZ42LPvvhKVfs3l9bH6nm8Rc
         ZVr2865cpUyBxHNscuugu7R3riVqVPmAHiMPr4ERGArUcuyKXhkMAF9YSCc/GkW5xDBI
         2zfXTwcKKI1U8XY07rst5O0bcWJ4G3dM/+YVTTAxGFnYpSTLboEdUsVjO0mt2StU87Sh
         35jOjBFWI9bwLDU+382qUZTrycs45aTjV64l+2b5/EjH6CriWTrsWDQrxWHVNOk1v/Qw
         MzbkOK65ORf0Gcy1pIDXEGYgU5/YYha+piUGDG1QREC46kKYR4zPCID0GYEpy+g48MmP
         c0sA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkWQbultEtoGtV99dmlcR4GGNxuqFT8pMjrWUUsFFG0YitGmBUt
	o2VdjK8mIfzSWl1u/+3EORU=
X-Google-Smtp-Source: AA0mqf5wN42rspM1pLXM7QGb+1dBxqcURq0pNcsDfM19HPbjvf2kk8CuizhK5XJZnJpXJt/WL5HRdQ==
X-Received: by 2002:a05:6512:1112:b0:4b5:6375:32d9 with SMTP id l18-20020a056512111200b004b5637532d9mr1727301lfg.480.1670158937452;
        Sun, 04 Dec 2022 05:02:17 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:2111:b0:49a:b814:856d with SMTP id
 q17-20020a056512211100b0049ab814856dls2029025lfr.1.-pod-prod-gmail; Sun, 04
 Dec 2022 05:02:14 -0800 (PST)
X-Received: by 2002:a05:6512:2086:b0:4b4:1048:42e6 with SMTP id t6-20020a056512208600b004b4104842e6mr24779871lfr.108.1670158934128;
        Sun, 04 Dec 2022 05:02:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670158934; cv=none;
        d=google.com; s=arc-20160816;
        b=PqwkkHiAXXoouT8PSqq9UiSTrSvO1pfkcmZIUM3fU+uiEZvXd+dWFMA7Sj6O8oC2oQ
         dnVbqp1HJ8FmYIA3HnYYwyRaK0rPa0XUfey90gVSoThS9oAbyV8Z+KoyKYE0t78YOQwj
         xyvUKVO33QXVv+JHaB/+MxESZJH0ibZ/UR3D7e6LX1es787yZ6fA29mA8+gMHXuSaP8R
         IoRg/Eoar/Z/JiD1j2xdAjYtVXWgXx8GIsUI28P4xmgEdHJIBvlkS12X78Wt4WOEjT+M
         OK6Botcnw/9dRI7o0UpJgjcKK5EzvCBMtJK+Sx8YZSHEdRSQdeFFlVBjwQ7EHIqKqdOV
         Jcig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zXxFQlGUGEe0zliEn7Geh69YRSFSrMsfUY+LLSIhbuY=;
        b=QKLvfML5gwwKPIgDmHNP9oDNoB5Lbd1QLUCxrNx/9tbi3zFyMZ0jt2FP7EPkTmDlbk
         NZp3mqROmmgDlnRBW4aubPjznbKDtRc/H37KgKjAG+kB0Ku2vC+cqAktUzjCzABjycnM
         LWMC/sold8NNatlbYJQUGe9z3F5PhcpT8pWPOfO+mnpSUCQqbVCTX79O1wSZBqlMwGYS
         bhPY79J6FbZ7xPunl4sxbUPWju1ISwR8fwGTb2E76drSDXIJsEIdmgVNwBqypr3FL7in
         Ibu9Oh1hreWk8+OWM++Ji5Fp9Rpwqh6/PaWxgABsHBxU0YNCoAknZRrKXDDgBimeP42b
         4lPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=hEbnUPEN;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id bi27-20020a05651c231b00b002773925701bsi568646ljb.1.2022.12.04.05.02.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 05:02:14 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id fc4so14900635ejc.12
        for <open-iscsi@googlegroups.com>; Sun, 04 Dec 2022 05:02:14 -0800 (PST)
X-Received: by 2002:a17:907:378:b0:7ad:db82:d071 with SMTP id
 rs24-20020a170907037800b007addb82d071mr52467729ejb.200.1670158933571; Sun, 04
 Dec 2022 05:02:13 -0800 (PST)
MIME-Version: 1.0
References: <20221122213040.4128105-1-haowenchao@huawei.com>
 <4d21f806-6653-5457-918c-563a3032d128@suse.com> <00f11c61-a53f-c48a-017f-4c06055ea708@huawei.com>
 <0f7258d5-ff8e-fa4e-ab8e-5125c42a6d07@suse.com> <CAOptpSO=BEGWFkzT2umFXnWSyn24XR5nHc-mnTvsVb6PAn=4xA@mail.gmail.com>
 <057b6774-646d-5970-4743-20e249856688@suse.com>
In-Reply-To: <057b6774-646d-5970-4743-20e249856688@suse.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Sun, 4 Dec 2022 21:02:01 +0800
Message-ID: <CAOptpSMzQC0ur7oWFRD0fzie7eENxh6JK+c0JE+oLhCiypQBRA@mail.gmail.com>
Subject: Re: [PATCH] scsi:iscsi: Record session's startup mode in kernel
To: Lee Duncan <lduncan@suse.com>
Cc: Wenchao Hao <haowenchao@huawei.com>, Chris Leech <cleech@redhat.com>, 
	Mike Christie <michael.christie@oracle.com>, open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=hEbnUPEN;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::633
 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 1, 2022 at 3:53 AM Lee Duncan <lduncan@suse.com> wrote:
>
> [A much-reduced CC list, since my reply doesn't need wide distribution.]
>
> On 11/23/22 09:27, Wenchao Hao wrote:
> > On Thu, Nov 24, 2022 at 12:51 AM Lee Duncan <lduncan@suse.com> wrote:
> >>
> >> On 11/22/22 20:41, Wenchao Hao wrote:
> >>> On 2022/11/23 4:00, Lee Duncan wrote:
> >>>> On 11/22/22 13:30, Wenchao Hao wrote:
> >>>>> There are 3 iscsi session's startup mode which are onboot, manual and
> >>>>> automatic. We can boot from iSCSI disks with help of dracut's service
> >>>>> in initrd, which would set node's startup mode to onboot, then create
> >>>>> iSCSI sessions.
> >>>>>
> >>>>> While the configure of onboot mode is recorded in file of initrd stage
> >>>>> and would be lost when switch to rootfs. Even if we update the startup
> >>>>> mode to onboot by hand after switch to rootfs, it is possible that the
> >>>>> configure would be covered by another discovery command.
> >>>>>
> >>>>> root would be mounted on iSCSI disks when boot from iSCSI disks, if the
> >>>>> sessions is logged out, the related disks would be removed, which would
> >>>>> cause the whole system halt.
> >>>>>
> >>>>> So we need record session's start up mode in kernel and check this
> >>>>> mode before logout this session.
> >>>>>
> >>>>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
> >>>>> ---
> >>>>>     drivers/infiniband/ulp/iser/iscsi_iser.c | 1 +
> >>>>>     drivers/scsi/be2iscsi/be_iscsi.c         | 1 +
> >>>>>     drivers/scsi/bnx2i/bnx2i_iscsi.c         | 1 +
> >>>>>     drivers/scsi/cxgbi/libcxgbi.c            | 1 +
> >>>>>     drivers/scsi/iscsi_tcp.c                 | 1 +
> >>>>>     drivers/scsi/libiscsi.c                  | 5 +++++
> >>>>>     drivers/scsi/qedi/qedi_iscsi.c           | 1 +
> >>>>>     drivers/scsi/qla4xxx/ql4_os.c            | 1 +
> >>>>>     drivers/scsi/scsi_transport_iscsi.c      | 4 ++++
> >>>>>     include/scsi/iscsi_if.h                  | 1 +
> >>>>>     include/scsi/libiscsi.h                  | 1 +
> >>>>>     11 files changed, 18 insertions(+)
> >>>>>
> >>>>> diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
> >>>>> index 620ae5b2d80d..778c023673ea 100644
> >>>>> --- a/drivers/infiniband/ulp/iser/iscsi_iser.c
> >>>>> +++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
> >>>>> @@ -947,6 +947,7 @@ static umode_t iser_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_IFACE_NAME:
> >>>>>             case ISCSI_PARAM_INITIATOR_NAME:
> >>>>>             case ISCSI_PARAM_DISCOVERY_SESS:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return S_IRUGO;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/be2iscsi/be_iscsi.c b/drivers/scsi/be2iscsi/be_iscsi.c
> >>>>> index 8aeaddc93b16..a21a4d9ab8b8 100644
> >>>>> --- a/drivers/scsi/be2iscsi/be_iscsi.c
> >>>>> +++ b/drivers/scsi/be2iscsi/be_iscsi.c
> >>>>> @@ -1401,6 +1401,7 @@ umode_t beiscsi_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_LU_RESET_TMO:
> >>>>>             case ISCSI_PARAM_IFACE_NAME:
> >>>>>             case ISCSI_PARAM_INITIATOR_NAME:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return S_IRUGO;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
> >>>>> index a3c800e04a2e..d1fb06d8a92e 100644
> >>>>> --- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
> >>>>> +++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
> >>>>> @@ -2237,6 +2237,7 @@ static umode_t bnx2i_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_BOOT_ROOT:
> >>>>>             case ISCSI_PARAM_BOOT_NIC:
> >>>>>             case ISCSI_PARAM_BOOT_TARGET:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return S_IRUGO;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
> >>>>> index af281e271f88..111b2ac78964 100644
> >>>>> --- a/drivers/scsi/cxgbi/libcxgbi.c
> >>>>> +++ b/drivers/scsi/cxgbi/libcxgbi.c
> >>>>> @@ -3063,6 +3063,7 @@ umode_t cxgbi_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_TGT_RESET_TMO:
> >>>>>             case ISCSI_PARAM_IFACE_NAME:
> >>>>>             case ISCSI_PARAM_INITIATOR_NAME:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return S_IRUGO;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> >>>>> index 5fb1f364e815..47a73fb3e4b0 100644
> >>>>> --- a/drivers/scsi/iscsi_tcp.c
> >>>>> +++ b/drivers/scsi/iscsi_tcp.c
> >>>>> @@ -1036,6 +1036,7 @@ static umode_t iscsi_sw_tcp_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_TGT_RESET_TMO:
> >>>>>             case ISCSI_PARAM_IFACE_NAME:
> >>>>>             case ISCSI_PARAM_INITIATOR_NAME:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return S_IRUGO;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> >>>>> index d95f4bcdeb2e..1f2b0a9a029e 100644
> >>>>> --- a/drivers/scsi/libiscsi.c
> >>>>> +++ b/drivers/scsi/libiscsi.c
> >>>>> @@ -3576,6 +3576,8 @@ int iscsi_set_param(struct iscsi_cls_conn *cls_conn,
> >>>>>             break;
> >>>>>         case ISCSI_PARAM_LOCAL_IPADDR:
> >>>>>             return iscsi_switch_str_param(&conn->local_ipaddr, buf);
> >>>>> +    case ISCSI_PARAM_NODE_STARTUP:
> >>>>> +        return iscsi_switch_str_param(&session->node_startup, buf);
> >>>>>         default:
> >>>>>             return -ENOSYS;
> >>>>>         }
> >>>>> @@ -3712,6 +3714,9 @@ int iscsi_session_get_param(struct iscsi_cls_session *cls_session,
> >>>>>             else
> >>>>>                 len = sysfs_emit(buf, "\n");
> >>>>>             break;
> >>>>> +    case ISCSI_PARAM_NODE_STARTUP:
> >>>>> +        len = sysfs_emit(buf, "%s\n", session->node_startup);
> >>>>> +        break;
> >>>>>         default:
> >>>>>             return -ENOSYS;
> >>>>>         }
> >>>>> diff --git a/drivers/scsi/qedi/qedi_iscsi.c b/drivers/scsi/qedi/qedi_iscsi.c
> >>>>> index 31ec429104e2..b947a5bca380 100644
> >>>>> --- a/drivers/scsi/qedi/qedi_iscsi.c
> >>>>> +++ b/drivers/scsi/qedi/qedi_iscsi.c
> >>>>> @@ -1437,6 +1437,7 @@ static umode_t qedi_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_BOOT_ROOT:
> >>>>>             case ISCSI_PARAM_BOOT_NIC:
> >>>>>             case ISCSI_PARAM_BOOT_TARGET:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return 0444;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/qla4xxx/ql4_os.c b/drivers/scsi/qla4xxx/ql4_os.c
> >>>>> index 9e849f6b0d0f..1cb7c6dbe9d3 100644
> >>>>> --- a/drivers/scsi/qla4xxx/ql4_os.c
> >>>>> +++ b/drivers/scsi/qla4xxx/ql4_os.c
> >>>>> @@ -468,6 +468,7 @@ static umode_t qla4_attr_is_visible(int param_type, int param)
> >>>>>             case ISCSI_PARAM_DISCOVERY_PARENT_IDX:
> >>>>>             case ISCSI_PARAM_DISCOVERY_PARENT_TYPE:
> >>>>>             case ISCSI_PARAM_LOCAL_IPADDR:
> >>>>> +        case ISCSI_PARAM_NODE_STARTUP:
> >>>>>                 return S_IRUGO;
> >>>>>             default:
> >>>>>                 return 0;
> >>>>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> >>>>> index c3fe5ecfee59..39c14d2a8aad 100644
> >>>>> --- a/drivers/scsi/scsi_transport_iscsi.c
> >>>>> +++ b/drivers/scsi/scsi_transport_iscsi.c
> >>>>> @@ -4367,6 +4367,7 @@ iscsi_session_attr(tsid, ISCSI_PARAM_TSID, 0);
> >>>>>     iscsi_session_attr(def_taskmgmt_tmo, ISCSI_PARAM_DEF_TASKMGMT_TMO, 0);
> >>>>>     iscsi_session_attr(discovery_parent_idx, ISCSI_PARAM_DISCOVERY_PARENT_IDX, 0);
> >>>>>     iscsi_session_attr(discovery_parent_type, ISCSI_PARAM_DISCOVERY_PARENT_TYPE, 0);
> >>>>> +iscsi_session_attr(node_startup, ISCSI_PARAM_NODE_STARTUP, 0);
> >>>>>       static ssize_t
> >>>>>     show_priv_session_state(struct device *dev, struct device_attribute *attr,
> >>>>> @@ -4488,6 +4489,7 @@ static struct attribute *iscsi_session_attrs[] = {
> >>>>>         &dev_attr_sess_def_taskmgmt_tmo.attr,
> >>>>>         &dev_attr_sess_discovery_parent_idx.attr,
> >>>>>         &dev_attr_sess_discovery_parent_type.attr,
> >>>>> +    &dev_attr_sess_node_startup.attr,
> >>>>>         NULL,
> >>>>>     };
> >>>>>     @@ -4587,6 +4589,8 @@ static umode_t iscsi_session_attr_is_visible(struct kobject *kobj,
> >>>>>             return S_IRUGO;
> >>>>>         else if (attr == &dev_attr_priv_sess_target_id.attr)
> >>>>>             return S_IRUGO;
> >>>>> +    else if (attr == &dev_attr_sess_node_startup.attr)
> >>>>> +        param = ISCSI_PARAM_NODE_STARTUP;
> >>>>>         else {
> >>>>>             WARN_ONCE(1, "Invalid session attr");
> >>>>>             return 0;
> >>>>> diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
> >>>>> index 5225a23f2d0e..e46e69c1fd02 100644
> >>>>> --- a/include/scsi/iscsi_if.h
> >>>>> +++ b/include/scsi/iscsi_if.h
> >>>>> @@ -610,6 +610,7 @@ enum iscsi_param {
> >>>>>         ISCSI_PARAM_DISCOVERY_PARENT_IDX,
> >>>>>         ISCSI_PARAM_DISCOVERY_PARENpatches.suse/block-switch-polling-to-be-bio-based.patchT_TYPE,
> >>>>>         ISCSI_PARAM_LOCAL_IPADDR,
> >>>>> +    ISCSI_PARAM_NODE_STARTUP,
> >>>>>         /* must always be last */
> >>>>>         ISCSI_PARAM_MAX,
> >>>>>     };
> >>>>> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> >>>>> index 654cc3918c94..af4ccdcc1140 100644
> >>>>> --- a/include/scsi/libiscsi.h
> >>>>> +++ b/include/scsi/libiscsi.h
> >>>>> @@ -327,6 +327,7 @@ struct iscsi_session {
> >>>>>         char            *boot_target;
> >>>>>         char            *portal_type;
> >>>>>         char            *discovery_parent_type;
> >>>>> +    char            *node_startup;
> >>>>>         uint16_t        discovery_parent_idx;
> >>>>>         uint16_t        def_taskmgmt_tmo;
> >>>>>         uint16_t        tsid;
> >>>>
> >>>> The iscsiadm/iscsid tools refuse to logout of an ONBOOT session.
> >>>>
> >>>
> >>> Sorry I did not highlight the key points. The root reason we need to record
> >>> node_startup mode in kernel is userspace's node_startup mode is unreliable in
> >>> some scenarios:
> >>>
> >>> 1. iscsi node and session is created in initrd, the configure files of these
> >>>      nodes would be lost after we switch to rootfs
> >>
> >> That is not my experience. When I boot from iscsi root, after the system
> >> is running, if I tell the iscsiadm to logout of the root iscsi target it
> >> refuses. I will test again to verify.
> >>
> >>> 2. someone do iscsiadm -m discovery but did not specify the operation mode,
> >>>      the iscsi node's node_startup would be updated to which specified in iscsid.conf
> >>
> >> The default on iscsiadm discovery mode is to replace the info on a
> >> discovered target, but there are other modes. And they don't effect the
> >> current (root) session.
> >>
> >>> 3. someone do iscsiadm -m node -o update to update nodes' configure
> >>
> >> Again, does not effect the currently-running session, and can be
> >> considered shooting oneself in the foot.
> >>
> >>>
> >>> What's more, it seems "iscsiadm/iscsid" only refuse to logout of an ONBOOT
> >>> session when logout is specificed by "--logoutall". We still can logout an
> >>> ONBOOT session with "iscsiadm -m node -u comamnd".
> >>
> >> Again, I don't believe that's correct. I will test it.
> >>
> >>>
> >>> Based on these analysis, I think we should record the node_startup mode in kernel
> >>> and check in userspace to avoid logout ONBOOT sessions.
> >>
> > I cloned the source code from github and built to test.
> > Here is my brief test steps:
> >
> > 1. discovery an iSCSI node and login, the default startup
> >     mode is manual
> > 2. using iscsiadm -m node -o update command to update
> >     the startup mode to onboot(it did not refused)
> > 3. logout the session with iscsiadm -m node -u
> >     the logout succeed too.
>
> Let me start by saying I agree with you now, that there *is* an issue.
> But your test was flawed.
>
> After you log into a target, changing the Node database does nothing.
> The node database is only referenced with you login using it, e.g.
> "iscsiadm -m node ... -l".
>
> But even if you logged out and then back into the target, thereby using
> the updated Node DB entries, it would not have worked.
>
> For one thing, "iscsiadm -m session -u" just logs out of all sessions,
> as far as I can see, based on testing and code inspection. So that is a
> problem.
>
> Note that the iscsi.service systemd service file on SLES does "not" do
> that. It instead logs of of "manual" and "automatic" session, but only
> ones that are listed in the Node database.
>
> And as you pointed out, any knowledge iscsid has of existing sessions is
> lost if the daemmon dies or is stopped, then restarted. At that point,
> the only knowledge is has about each session is what it finds in sysfs.
>
> I have done some testing with your new kernel change that adds a
> "node_startup" sysfs string attribute to session data. I modified
> open-iscsi to pass in the node startup value, and that's a good start.
> The next step is adding a "startup" value in the session structure,
> filling it in from sysfs (or current state), and refusing to logout out
> of sesions that have this set to "onboot", which all sounds fairly
> simple. I also want to test with "iscsiadm -m fw -l", which is what I
> believe is used when booting from software iscsi (i.e. iBFT).
>
> Have you already worked on the open-iscsi side of this? No reason for
> duplicate development.
>
> --
> Lee Duncan
>

Sorry I missed this message, I have modified open-iscsi to work
with this sysfs interface. But I think we do not need this any more
because the safe logout can avoid disks being removed.

Checking holders and if disk is mounted before logout seems enough,
so ignore this discussion.

Thank you very much for your reply.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSMzQC0ur7oWFRD0fzie7eENxh6JK%2Bc0JE%2BoLhCiypQBRA%40mail.gmail.com.
