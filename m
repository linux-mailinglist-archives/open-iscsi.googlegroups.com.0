Return-Path: <open-iscsi+bncBDA4VMEL3QNRBVHFXDYAKGQEFZFUYXY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 656BF12E9C9
	for <lists+open-iscsi@lfdr.de>; Thu,  2 Jan 2020 19:13:41 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id g11sf2899098edu.10
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jan 2020 10:13:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577988821; cv=pass;
        d=google.com; s=arc-20160816;
        b=I0Mb9M5XJZ4GcoI5QFPwo9+mMgI89M3ckbyt/pcfAkuIGcNl2l1QWDfbNzVGD94sAf
         8m1B9isus+ed+pJRK05Lnk3zmUuwo2h+W/M7secgakHXNi/WCQv/a0xWwzV1wlTeWi62
         fq6Ej94JbBHeNzNpmOKYBxne/idCAXo97G7j7gJDQbFzq090GK2kbooBiMBZlXHODiu+
         rafzO3vqxUby0iYEcWhlH73fW7WtzgL7OZZCVeH7n2V2Q1Z2qnLDV8aCE862OopFSlFL
         qsn+gzZQ0ARHo0lXhpWI/q/1bIFLxfTCJy2j69QeKASZOND0bxrv2ccSqppv52nB/nTk
         Frjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:user-agent:references:organization:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=ef2RxE0XC2zKAUhDPznm5FzA3dHTKFwj5C9A+T1k514=;
        b=I9s31SJa/pLyyKwuK9ejn04zt3oXroDX3ICk43wE2MXF0RcwCW5fcfqTxti2VyDX1S
         2eBWC8VJUcUZeM4isBqT1j+UmOl7yG9euakPcNFNgSiO9bNWtDfH/NdU6332xwfBEQWc
         qSIppYyIKd6byOhQilb3zGUXbqH/idtuMzuAUuQ0cYnqexjHz64QakIfzuk4+Z2rLu4O
         OQdvLyHdU4n7oXnzrx4LdiREnAIxZnkxiDODOjqPYXNU7u2/lzT2/YVoWGIdgBUlhTlh
         LNnldBmPzuIW9ZzOMfpUA6AmOhUeIg7aEiK4E9FGB6+TO7h0Dehs72HbfO6pQv4rj9Q2
         YexA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references
         :user-agent:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ef2RxE0XC2zKAUhDPznm5FzA3dHTKFwj5C9A+T1k514=;
        b=sN03s9ZzRHHMryb6j1M9sePl+eBv2cCoW0To8OCdrY97euIAb3H0lUE4NWOvLBCd2d
         J00jHnIVIkqpMTlzqmBb9UOnFryUZ2cgvAXkuecNmQAfLBelPaJEwt1LDJjtnF+OSZAq
         PSVB/l+82iAlkbpKktu0nDaPmjusG6ZbIZbMUqof+VZAx0Sax+FJvk1zCgfTaU7U/50w
         pyE9OfNgzts8H+smFvgDQT5OP9w50LuMx0U3KoQN4ABU6sKY+nMnS3uf9ZLQmWQ4m1jt
         zDGFFvUyxxPn8rhrKftaSoHLjdpWMCFLRpyE7R03pM195XFxgkAXl6f4p7t+RelnoyHZ
         QwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:user-agent:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ef2RxE0XC2zKAUhDPznm5FzA3dHTKFwj5C9A+T1k514=;
        b=QV/G9PjAaUKQWe1AF1xN32xFLDsHNdsdMm5Gh/YTQBPEowdSIjMkDGbQedIn7S6voK
         GmwVLdYw0S2bE7of+LPJYHRHtFsxz6EOJfVccwNjsE5ODIwvRPFng09dgu3Gp2L79Q3J
         ySDOV/y7xM8DbdjT/emUHDkUTxVtyvqGnPisS/LhhYvXeCV6QHpJ6XsrFn4lb7G0XgIL
         qy1+c2OcgM9cTGyYe0w9cQGD1Ho4qRRoxeBGaNcd74080BynPJ3B08vlK5jwPCUwYJ0f
         mhyaGx/MgdHi5F8lsagzqsg560N/zV5UqcYLUOeNWclhbWFcYkpjZkZnYWdCmzKmJ8cJ
         ZPUg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAW/zFjXBDI5Ylh7/rrGQUD0v+eCxi9tcmPG9Qiu3r0xbwyRRfEz
	PyZIin4HCY2jlnhQmxtXnG0=
X-Google-Smtp-Source: APXvYqwU/DbzsoosmTikIRgkqhSSk6/DiEHI1MvaAYehC+YXc8/z6sb3EOx+k8XRt9i+Y2lttm0wyw==
X-Received: by 2002:a17:906:3590:: with SMTP id o16mr90918235ejb.34.1577988821030;
        Thu, 02 Jan 2020 10:13:41 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls13094255ejb.1.gmail; Thu,
 02 Jan 2020 10:13:40 -0800 (PST)
X-Received: by 2002:a17:906:a406:: with SMTP id l6mr88948016ejz.293.1577988820486;
        Thu, 02 Jan 2020 10:13:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577988820; cv=none;
        d=google.com; s=arc-20160816;
        b=rzD9U+Ab8skY6BN3S+Uh4s0Z6+6K9a40gUn/mlTj0BwgKdHr/wkHkypuXmx2XzmZ6S
         NgR0qzJ7y4fPJ6GcPQX1W0Wtw4iMGPWCT6jR/Sg23BeHGIEqmuRbAPKI6oVcVIvhR8dL
         jEiZVPnuoUkpuQtHVLbf/CW7IQay9OaFNuRC+V9npYrItKVxdvDzOMF0wdGAbQxBjyY7
         gC4yvI5BBbY7pXkXI6YSo920xlgmraj/lC0esKuGvDg0vsONN+SIaFO70InTBFTKwgj5
         +IWZwj5nMFqJhB/+yom3rnVumh4YymD8SwuzYZCuy98YjPLHiuIosxF9DvXDgO7tXlZz
         BJpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:user-agent:references:organization
         :in-reply-to:subject:cc:to:from;
        bh=vkQVrJeUUirbLp0o+RLbyNPBazZ8os5A+994+Jrildk=;
        b=NqkwNQcKG10MOJ/mNhi5975FotdguqRyAv6sWI9muKYMij4EVwY4CXY0jFDgn9isoC
         VtVOShBvloERP9fxzVsvAa2wycR0Xkl0PtXgH82LlrHp27vmJc9qBn16wf6lfTlopGZU
         XIHpgL0bvPM7HYCzsrdu/qoVb5sQUdspNRJWsC2io0k8W4z+kk91pHRkNiA4P1J7wcAy
         17tsI+9K/oiSHiCkIB9lOdEXU3Kqn+1ECE/EJGDltfXlA0W2abUvcvXejxt0PHR3V/f2
         xnJonWNoJOFxvM7bqgAqN8PxF3IckeF98IJNqkV5DFp0sdOR6/TecNy39RDxVF+DOQbr
         Nwjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id x18si1814184eds.2.2020.01.02.10.13.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Jan 2020 10:13:40 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::147])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E53F228AA34;
	Thu,  2 Jan 2020 18:13:39 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Khazhismel Kumykov <khazhy@google.com>
Cc: lduncan@suse.com,  Chris Leech <cleech@redhat.com>,  jejb@linux.ibm.com,  "Martin K. Petersen" <martin.petersen@oracle.com>,  "'Khazhismel Kumykov' via open-iscsi" <open-iscsi@googlegroups.com>,  linux-scsi@vger.kernel.org,  Bharath Ravi <rbharath@google.com>,  kernel@collabora.com,  Mike Christie <mchristi@redhat.com>,  Bart Van Assche <bvanassche@acm.org>,  Dave Clausen <dclausen@google.com>,  Nick Black <nlb@google.com>,  Vaibhav Nagarnaik <vnagarnaik@google.com>,  Anatol Pomazau <anatol@google.com>,  Tahsin Erdogan <tahsin@google.com>,  Frank Mayhar <fmayhar@google.com>,  Junho Ryu <jayr@google.com>
Subject: Re: [PATCH v3] iscsi: Perform connection failure entirely in kernel space
In-Reply-To: <CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com>
	(Khazhismel Kumykov's message of "Thu, 2 Jan 2020 12:07:51 -0500")
Organization: Collabora
References: <20191226204746.2197233-1-krisman@collabora.com>
	<CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Date: Thu, 02 Jan 2020 13:13:36 -0500
Message-ID: <85ftgx7mlr.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Khazhismel Kumykov <khazhy@google.com> writes:

> On Thu, Dec 26, 2019 at 3:48 PM Gabriel Krisman Bertazi
> <krisman@collabora.com> wrote:
>>
>> From: Bharath Ravi <rbharath@google.com>
>>
>> Connection failure processing depends on a daemon being present to (at
>> least) stop the connection and start recovery.  This is a problem on a
>> multipath scenario, where if the daemon failed for whatever reason, the
>> SCSI path is never marked as down, multipath won't perform the
>> failover and IO to the device will be forever waiting for that
>> connection to come back.
>>
>> This patch performs the connection failure entirely inside the kernel.
>> This way, the failover can happen and pending IO can continue even if
>> the daemon is dead. Once the daemon comes alive again, it can execute
>> recovery procedures if applicable.
>>
>> Changes since v2:
>>   - Don't hold rx_mutex for too long at once
>>
>> Changes since v1:
>>   - Remove module parameter.
>>   - Always do kernel-side stop work.
>>   - Block recovery timeout handler if system is dying.
>>   - send a CONN_TERM stop if the system is dying.
>>
>> Cc: Mike Christie <mchristi@redhat.com>
>> Cc: Lee Duncan <LDuncan@suse.com>
>> Cc: Bart Van Assche <bvanassche@acm.org>
>> Co-developed-by: Dave Clausen <dclausen@google.com>
>> Signed-off-by: Dave Clausen <dclausen@google.com>
>> Co-developed-by: Nick Black <nlb@google.com>
>> Signed-off-by: Nick Black <nlb@google.com>
>> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
>> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
>> Co-developed-by: Anatol Pomazau <anatol@google.com>
>> Signed-off-by: Anatol Pomazau <anatol@google.com>
>> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
>> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
>> Co-developed-by: Frank Mayhar <fmayhar@google.com>
>> Signed-off-by: Frank Mayhar <fmayhar@google.com>
>> Co-developed-by: Junho Ryu <jayr@google.com>
>> Signed-off-by: Junho Ryu <jayr@google.com>
>> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Bharath Ravi <rbharath@google.com>
>> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 63 +++++++++++++++++++++++++++++
>>  include/scsi/scsi_transport_iscsi.h |  1 +
>>  2 files changed, 64 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 271afea654e2..c6db6ded60a1 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -86,6 +86,12 @@ struct iscsi_internal {
>>         struct transport_container session_cont;
>>  };
>>
>> +/* Worker to perform connection failure on unresponsive connections
>> + * completely in kernel space.
>> + */
>> +static void stop_conn_work_fn(struct work_struct *work);
>> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
>> +
>>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
>>  static struct workqueue_struct *iscsi_eh_timer_workq;
>>
>> @@ -1611,6 +1617,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
>>  static LIST_HEAD(sesslist);
>>  static DEFINE_SPINLOCK(sesslock);
>>  static LIST_HEAD(connlist);
>> +static LIST_HEAD(connlist_err);
>>  static DEFINE_SPINLOCK(connlock);
>>
>>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
>> @@ -2247,6 +2254,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>>
>>         mutex_init(&conn->ep_mutex);
>>         INIT_LIST_HEAD(&conn->conn_list);
>> +       INIT_LIST_HEAD(&conn->conn_list_err);
>>         conn->transport = transport;
>>         conn->cid = cid;
>>
>> @@ -2293,6 +2301,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>>
>>         spin_lock_irqsave(&connlock, flags);
>>         list_del(&conn->conn_list);
>> +       list_del(&conn->conn_list_err);
>>         spin_unlock_irqrestore(&connlock, flags);
>>
>>         transport_unregister_device(&conn->dev);
>> @@ -2407,6 +2416,51 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>>  }
>>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>>
>> +static void stop_conn_work_fn(struct work_struct *work)
>> +{
>> +       struct iscsi_cls_conn *conn, *tmp;
>> +       unsigned long flags;
>> +       LIST_HEAD(recovery_list);
>> +
>> +       spin_lock_irqsave(&connlock, flags);
>> +       if (list_empty(&connlist_err)) {
>> +               spin_unlock_irqrestore(&connlock, flags);
>> +               return;
>> +       }
>> +       list_splice_init(&connlist_err, &recovery_list);
>> +       spin_unlock_irqrestore(&connlock, flags);
>> +
>> +       list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
>> +               uint32_t sid = iscsi_conn_get_sid(conn);
>> +               struct iscsi_cls_session *session;
>> +
>> +               mutex_lock(&rx_queue_mutex);
> This worried me a bit, but it seems we won't destroy_conn while it's
> on the err list - cool.
>> +
>> +               session = iscsi_session_lookup(sid);
>> +               if (session) {
>> +                       if (system_state != SYSTEM_RUNNING) {
>> +                               session->recovery_tmo = 0;
>> +                               conn->transport->stop_conn(conn,
>> +                                                          STOP_CONN_TERM);
>> +                       } else {
>> +                               conn->transport->stop_conn(conn,
>> +                                                          STOP_CONN_RECOVER);
>> +                       }
>> +               }
>> +
>> +               list_del_init(&conn->conn_list_err);
>> +
>> +               mutex_unlock(&rx_queue_mutex);
>> +
>> +               /* we don't want to hold rx_queue_mutex for too long,
>> +                * for instance if many conns failed at the same time,
>> +                * since this stall other iscsi maintenance operations.
>> +                * Give other users a chance to proceed.
>> +                */
>> +               cond_resched();
>> +       }
>> +}
>> +
>>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>>  {
>>         struct nlmsghdr *nlh;
>> @@ -2414,6 +2468,12 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>>         struct iscsi_uevent *ev;
>>         struct iscsi_internal *priv;
>>         int len = nlmsg_total_size(sizeof(*ev));
>> +       unsigned long flags;
>> +
>> +       spin_lock_irqsave(&connlock, flags);
>> +       list_add(&conn->conn_list_err, &connlist_err);
>> +       spin_unlock_irqrestore(&connlock, flags);
>> +       queue_work(system_unbound_wq, &stop_conn_work);
>>
>>         priv = iscsi_if_transport_lookup(conn->transport);
>>         if (!priv)
>> @@ -2748,6 +2808,9 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
>>         if (!conn)
>>                 return -EINVAL;
>>
>> +       if (!list_empty(&conn->conn_list_err))
> Does this check need to be under connlock?

My understanding is that it is not necessary, since it is serialized
against the conn removal itself, through the rx_mutex, it seemed safe to
do the verification lockless.

It can only race with the insertion, in which case, it will be safely
removed from the dispatch list here, under rx_mutex, and the worker will
detect and skipped it.

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85ftgx7mlr.fsf%40collabora.com.
